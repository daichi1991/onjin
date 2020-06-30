class CreateOrderSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :order_sounds do |t|
      t.bigint :order_id, null: false
      t.string :sound_file
      t.string :file_name
      t.timestamps
    end
  end
end
