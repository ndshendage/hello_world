class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true
      t.integer :items
      t.float :total
      t.string :payment_mode

      t.timestamps
    end
  end
end
