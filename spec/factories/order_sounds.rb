# == Schema Information
#
# Table name: order_sounds
#
#  id         :bigint           not null, primary key
#  file_name  :string(255)
#  sound_file :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint           not null
#
FactoryBot.define do
  factory :order_sound do
    
  end
end
