FactoryBot.define do
  factory :user do
    email { user @email_provider.com }
    password { 'changeme123' }
    credential_type { 'Admin' }
    credential_id { 1 }
  end
end
