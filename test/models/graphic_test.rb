# == Schema Information
#
# Table name: graphics
#
#  id         :integer          not null, primary key
#  review_id  :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GraphicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
