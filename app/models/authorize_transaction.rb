class AuthorizeTransaction < Transaction
  before_create :set_status

  def self.process_transaction
    AuthorizeTransaction.pending.each do |transaction|
      transaction.update_column(:status, [1, 2].sample)
    end
  end

  private

  def set_status
    self.status = "pending"
  end
end
