class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_one :image, as: :imageable
  validates :email, { presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } }
end
