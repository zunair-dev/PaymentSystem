FactoryBot.define do
  factory :user do
    name { 'First User' }
    email { user@email_provider.com }
    credential_type { 'Admin' }
    credential_id { 1 }
  end
end