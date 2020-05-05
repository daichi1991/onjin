# == Schema Information
#
# Table name: sounds
#
#  id              :bigint           not null, primary key
#  description     :text(65535)
#  downloads_count :integer          default(0), not null
#  file_name       :string(255)
#  likes_count     :integer          default(0), not null
#  sound_file      :string(255)
#  soundcloud_url  :string(255)
#  status          :integer
#  title           :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  creator_id      :bigint           not null
#  soundcloud_id   :string(255)
#  type_id         :bigint           not null
#
class Sound < ApplicationRecord
  mount_uploader :sound_file, SoundFileUploader
  acts_as_taggable

  belongs_to :creator

  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user

  has_many :downloads, dependent: :destroy
  has_many :dl_users, through: :downloads, source: :user

  def iine(user)
    likes.create(user_id: user.id)
  end

  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end

  def iine?(user)
    iine_users.include?(user)
  end

  def new_dl(user)
    downloads.create(user_id: user.id)
  end

  def update_dl(user)
    downloads = Download.find_by(user_id: user.id)
    downloads.touch
  end

  def dl?(user)
    dl_users.include?(user)
  end

end
