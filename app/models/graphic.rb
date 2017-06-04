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

class Graphic < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :review
end
