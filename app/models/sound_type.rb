# == Schema Information
#
# Table name: sound_types
#
#  id         :bigint           not null, primary key
#  type_name  :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SoundType < ApplicationRecord
end
