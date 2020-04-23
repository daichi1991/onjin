class CreateSoundTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :sound_types do |t|
      t.string :type_name , null: false
      t.timestamps
    end
  end
end
