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
require 'rails_helper'

RSpec.describe Estimate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
