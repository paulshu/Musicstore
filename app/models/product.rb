# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  quantity        :integer
#  price           :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :string
#  category_id     :integer
#  buying_quantity :integer          default(1)
#

class Product < ApplicationRecord
  validates :title, presence: true
  belongs_to :category
  has_many :photos   #一个产品中含用很多图片
  accepts_nested_attributes_for :photos # 把photos 作为product的巢状属性
  mount_uploader :image, ImageUploader  #上传单张图片可用
  belongs_to :user
  has_many :favorites
  has_many :fans, through: :favorites, source: :user
  scope :recent, -> { order('created_at DESC') }
  has_many :prints
  accepts_nested_attributes_for :prints
  has_many :reviews
  ratyrate_rateable "star"

end
