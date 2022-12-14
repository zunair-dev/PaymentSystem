class Transaction < ApplicationRecord
  validates :uuid, :customer_email, presence: true
  validates :amount, presence: true, unless: -> { instance_of?(VoidTransaction) }
  validates :amount, numericality: { greater_than: 0 }, unless: -> { instance_of?(VoidTransaction) }

  scope :approved_and_captured, -> { where(status: %w[approved captured]) }
  scope :un_errored, -> { where.not(status: 'error') }

  enum status: { pending: 0, approved: 1, declined: 2, captured: 3, refunded: 4, voided: 5, error: 6 }
end
