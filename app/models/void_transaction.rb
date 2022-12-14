class VoidTransaction < Transaction
  before_validation :set_status

  private

  def set_status
    self.status = "voided" if self.amount.blank?
  end
end
