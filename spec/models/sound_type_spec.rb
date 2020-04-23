# == Schema Information
#
# Table name: sound_types
#
#  id         :bigint           not null, primary key
#  type_name  :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe SoundType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
