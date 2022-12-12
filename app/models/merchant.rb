class Merchant < ApplicationRecord
  has_one :user, as: :credential

  enum status: { in_active: 0, active: 1 }
end
