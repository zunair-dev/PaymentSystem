class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string  :uuid
      t.decimal :amount
      t.string  :customer_phone
      t.string  :customer_email,   null: false, default: ""
      t.integer :status,           null: false, default: 0
      t.string  :notification_url, null: false, default: ""

      t.timestamps
    end
  end
end
