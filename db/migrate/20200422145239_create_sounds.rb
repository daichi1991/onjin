class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.string :title, null: false
      t.bigint :type_id, null: false
      t.text :description
      t.string :soundcloud_id
      t.string :soundcloud_url
      t.integer :status
      t.string :sound_file
      t.timestamps
    end
  end
end
