class Transaction < ApplicationRecord
  validates :uuid, :customer_email, :amount, presence: true
  validates :amount, comparison: { greater_than: 0 }

  enum status: { pending: 0, approved: 1, captured: 2, refunded: 3, voided: 4, error: 5 }
end
