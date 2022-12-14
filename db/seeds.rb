# create admin
Admin.create(name: "Admin 1")
User.create(email: "test1@gmail.com", password: "changeme123", credential: Admin.first)

# create merchants
Merchant.create(name: "Merchant 1", email: "test2@gmail.com", description: "this is the first merchant")
User.create(email: "test2@gmail.com", password: "changeme123", credential: Merchant.first)

Merchant.create(name: "Merchant 2", email: "test3@gmail.com", description: "this is the second merchant")
User.create(email: "test3@gmail.com", password: "changeme123", credential: Merchant.second)

# create authorized transactions
AuthorizeTransaction.create(uuid: SecureRandom.uuid, amount: 12.0, customer_phone: "9230448947", customer_email: "cemail1.0@gmail.com", status: 0, notification_url: "")
AuthorizeTransaction.create(uuid: SecureRandom.uuid, amount: 10.0, customer_phone: "9230443310", customer_email: "cemail2.0@gmail.com", status: 0, notification_url: "")
AuthorizeTransaction.create(uuid: SecureRandom.uuid, amount: 90.0, customer_phone: "9230448644", customer_email: "cemail3.0@gmail.com", status: 0, notification_url: "")
AuthorizeTransaction.create(uuid: SecureRandom.uuid, amount: 88.0, customer_phone: "9230048940", customer_email: "cemail4.0@gmail.com", status: 0, notification_url: "")
AuthorizeTransaction.create(uuid: SecureRandom.uuid, amount: 120.0, customer_phone: "9234448945", customer_email: "cemail5.0@gmail.com", status: 0, notification_url: "")

# create capture transactions
CaptureTransaction.create(uuid: SecureRandom.uuid, amount: 22.0, customer_phone: "9231448947", customer_email: "cemail6.0@gmail.com", status: 3, notification_url: "")
CaptureTransaction.create(uuid: SecureRandom.uuid, amount: 1.0, customer_phone: "9232443310", customer_email: "cemail7.0@gmail.com", status: 3, notification_url: "")
CaptureTransaction.create(uuid: SecureRandom.uuid, amount: 9.0, customer_phone: "9233448644", customer_email: "cemail8.0@gmail.com", status: 3, notification_url: "")

# create refund transactions
RefundTransaction.create(uuid: SecureRandom.uuid, amount: 12.0, customer_phone: "9234448947", customer_email: "cemail9.0@gmail.com", status: 4, notification_url: "")
RefundTransaction.create(uuid: SecureRandom.uuid, amount: 10.0, customer_phone: "9234043310", customer_email: "cemail10.0@gmail.com", status: 4, notification_url: "")

# create void transactions
VoidTransaction.create(uuid: SecureRandom.uuid, amount: 0.0, customer_phone: "9234248947", customer_email: "cemail11.0@gmail.com", status: 5, notification_url: "")
