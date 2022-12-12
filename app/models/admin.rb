class Admin < ApplicationRecord
  has_one :user, as: :credential
end
