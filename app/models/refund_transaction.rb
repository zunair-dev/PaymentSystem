class RefundTransaction < Transaction
  def self.process_refund_transaction
    cap_sum = CaptureTransaction.captured.sum(:amount)
    refunded_sum = RefundTransaction.un_errored.sum(:amount)

    RefundTransaction.refunded.each do |transaction|
      if refunded_sum > cap_sum || (refunded_sum + transaction.amount) > cap_sum
        transaction.update_column(:status, 'error')
      else
        transaction.update_column(status, 'refunded')
        refunded_sum += transaction.amount
      end
    end
  end
end
