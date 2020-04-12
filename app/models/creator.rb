# == Schema Information
#
# Table name: creators
#
#  id               :bigint           not null, primary key
#  address_building :string(255)
#  address_city     :string(255)      not null
#  address_street   :string(255)      not null
#  birthday         :string(255)      not null
#  first_name       :string(255)      not null
#  first_name_kana  :string(255)      not null
#  last_name        :string(255)      not null
#  last_name_kana   :string(255)      not null
#  phone_number     :string(255)      not null
#  postcode         :integer          not null
#  prefecture_code  :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint
#
# Indexes
#
#  index_creators_on_user_id  (user_id)
#
class Creator < ApplicationRecord

  belongs_to :user

  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end
