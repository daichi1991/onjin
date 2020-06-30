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
require 'rails_helper'

RSpec.describe PriceList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
