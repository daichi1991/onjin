# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  description    :text(65535)
#  payment_status :integer
#  price          :decimal(9, 2)
#  status         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  creator_id     :bigint           not null
#  customer_id    :bigint           not null
#  estimate_id    :bigint           not null
#  order_sound_id :bigint
#
FactoryBot.define do
  factory :order do
    
  end
end
