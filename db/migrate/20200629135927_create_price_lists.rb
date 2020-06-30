class CreatePriceLists < ActiveRecord::Migration[6.0]
  def change
    create_table :price_lists do |t|
      t.bigint :creator_id, null: false
      t.text :description      
      t.timestamps
    end
  end
end
