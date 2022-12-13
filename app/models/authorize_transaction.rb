class AuthorizeTransaction < Transaction
  before_create :set_status

  private

  def set_status
    self.status = "pending"
  end
end
