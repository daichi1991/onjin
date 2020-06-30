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
class OrderSound < ApplicationRecord
  belongs_to :creator
  belongs_to :user
  belongs_to :order
end
