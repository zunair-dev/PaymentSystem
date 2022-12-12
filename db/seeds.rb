# create admin
Admin.create(name: "Admin 1")
User.create(email: "test1@gmail.com", password: "changeme123", credential: Admin.first)

# create merchants
Merchant.create(name: "Merchant 1", description: "this is the first merchant")
User.create(email: "test2@gmail.com", password: "changeme123", credential: Merchant.first)
