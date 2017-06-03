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

class Review < ApplicationRecord

  belongs_to :user
  belongs_to :product
  validates :body, presence: true
end
