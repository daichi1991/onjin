class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.bigint :creator_id, null: false
      t.bigint :customer_id, null: false
      t.bigint :order_sound_id
      t.bigint :estimate_id, null: false
      t.integer :status
      t.decimal :price, precision: 9, scale: 2
      t.integer :payment_status
      t.text :description
      t.timestamps
    end
  end
end
