class CreateDownloads < ActiveRecord::Migration[6.0]
  def change
    create_table :downloads do |t|
      t.integer :user_id, null: false
      t.integer :sound_id, null: false

      t.timestamps

      t.index :user_id
      t.index :sound_id
      t.index [:user_id, :sound_id], unique: true
    end
  end
end
