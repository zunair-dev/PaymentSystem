class Admin < ApplicationRecord
  validates :name, presence: true

  has_one :user, as: :credential
end
