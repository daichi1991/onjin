# == Schema Information
#
# Table name: estimates
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  price       :decimal(9, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  creator_id  :bigint           not null
#  customer_id :bigint           not null
#
class Estimate < ApplicationRecord
  belongs_to :creator
  belongs_to :user
  belongs_to :order
end
