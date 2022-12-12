class CreateMerchants < ActiveRecord::Migration[6.1]
  def change
    create_table :merchants do |t|
      t.string  :name
      t.string  :description
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
