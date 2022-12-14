class CaptureTransaction < Transaction
  def self.process_capture_transaction
    auth_sum = AuthorizeTransaction.approved.sum(:amount)
    cap_sum  = CaptureTransaction.captured.sum(:amount)

    CaptureTransaction.captured.each do |transaction|
      if cap_sum > auth_sum || (cap_sum + transaction.amount) > auth_sum
        transaction.update_column(:status, 'error')
      else
        transaction.update_column(:status, 'approved')
        cap_sum += transaction.amount
      end
    end
  end
end
