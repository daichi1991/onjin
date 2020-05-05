class AddLikesCountToSounds < ActiveRecord::Migration[6.0]
  class MigrationUser < ApplicationRecord
    self.table_name = :sounds
  end

  def up
    _up
  rescue => e
    _down
    raise e
  end

  def down
    _down
  end

  private

  def _up
    MigrationUser.reset_column_information

    add_column :sounds, :likes_count, :integer, null: false, default: 0 unless column_exists? :sounds, :likes_count
  end

  def _down
    MigrationUser.reset_column_information

    remove_column :sounds, :likes_count if column_exists? :sounds, :likes_count
  end

end
