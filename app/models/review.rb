# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  content    :text
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rating     :integer
#  look       :integer
#  price      :integer
#

class Review < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  belongs_to :product
  has_many :graphics
  accepts_nested_attributes_for :graphics

end
