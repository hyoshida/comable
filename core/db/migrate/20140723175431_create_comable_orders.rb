class CreateComableOrders < ActiveRecord::Migration
  def change
    create_table :comable_orders do |t|
      t.references :user
      t.string :guest_token
      t.string :code
      t.string :email
      t.integer :payment_fee, null: false, default: 0
      t.integer :shipment_fee, null: false, default: 0
      t.integer :total_price
      t.references :bill_address
      t.references :ship_address
      t.string :state
      t.datetime :completed_at
      t.timestamps null: false
    end

    add_index :comable_orders, :code, unique: true
  end
end
