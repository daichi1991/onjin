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
FactoryBot.define do
  factory :sound do
    
  end
end
