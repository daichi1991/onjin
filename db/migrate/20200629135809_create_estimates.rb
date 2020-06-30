class CreateEstimates < ActiveRecord::Migration[6.0]
  def change
    create_table :estimates do |t|
      t.bigint :creator_id, null: false
      t.bigint :customer_id, null: false
      t.decimal :price, precision: 9, scale: 2
      t.text :description
      t.timestamps
    end
  end
end
