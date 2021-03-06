# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sound_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_likes_on_sound_id              (sound_id)
#  index_likes_on_user_id               (user_id)
#  index_likes_on_user_id_and_sound_id  (user_id,sound_id) UNIQUE
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :sound
  counter_culture :sound
  validates :user_id, presence: true
  validates :sound_id, presence: true
end
