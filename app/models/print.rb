# == Schema Information
#
# Table name: prints
#
#  id         :integer          not null, primary key
#  product_id :integer
#  avatar     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Print < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :product
end
