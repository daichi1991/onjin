# == Schema Information
#
# Table name: price_lists
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  creator_id  :bigint           not null
#
class PriceList < ApplicationRecord
  belongs_to :creator
end
