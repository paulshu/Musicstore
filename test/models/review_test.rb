# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  star       :integer
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
