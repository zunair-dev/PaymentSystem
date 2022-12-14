FactoryBot.define do
  factory :admin do
    name { 'John Doe' }
    email { john @email_provider.com }
    password { 'changeme123' }
  end
end
