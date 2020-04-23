# == Schema Information
#
# Table name: sounds
#
#  id             :bigint           not null, primary key
#  description    :text(65535)
#  soundcloud_url :string(255)
#  status         :integer
#  title          :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  soundcloud_id  :string(255)
#  type_id        :bigint           not null
#
class Sound < ApplicationRecord

  acts_as_taggable 
end
