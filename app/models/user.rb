# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  is_admin               :boolean          default(FALSE)
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders

   # ---收藏商品功能三方关系代码块---
  has_many :favorites
  has_many :favorite_products, through: :favorites, source: :product

  def is_fans_of?(product) #fans 与 product.rb中的has_many对应，可以用不同的词
   favorite_products.include?(product)
  end

  def favorite!(product)
   favorite_products << product
  end

  def unfavorite!(product)
   favorite_products.delete(product)
  end

  # ---is_admin判断式---
  def admin?
    is_admin
  end
end
