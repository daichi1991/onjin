# == Schema Information
#
# Table name: downloads
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sound_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_downloads_on_sound_id              (sound_id)
#  index_downloads_on_user_id               (user_id)
#  index_downloads_on_user_id_and_sound_id  (user_id,sound_id) UNIQUE
#
require 'rails_helper'

RSpec.describe Download, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
