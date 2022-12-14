class VoidTransaction < Transaction
  before_validation :set_status

  private

  def set_status
    self.status = 'voided' if amount.blank?
  end
end
