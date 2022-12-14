FactoryBot.define do
  factory :merchant do
    name { 'Dummy Merchant' }
    description { 'Dummy Merchant Description' }
    status { 'active' }
    email { 'merchen@email_provider.com' }
  end
end
