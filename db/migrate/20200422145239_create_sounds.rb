class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.bigint :creator_id, null: false
      t.string :title, null: false
      t.bigint :type_id, null: false
      t.text :description
      t.string :soundcloud_id
      t.string :soundcloud_url
      t.integer :status
      t.string :sound_file
      t.string :file_name
      t.timestamps
    end
  end
end
