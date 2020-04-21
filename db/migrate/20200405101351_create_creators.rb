class CreateCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.belongs_to :user
      t.string :first_name, null:false
      t.string :first_name_kana, null:false
      t.string :last_name, null:false
      t.string :last_name_kana, null:false
      t.date :birthday, null:false
      t.string :phone_number, null:false
      t.integer :postcode, null:false
      t.integer :prefecture_code, null:false
      t.string :address_city, null:false
      t.string :address_street, null:false
      t.string :address_building
      t.timestamps
    end
  end
end
