class User < ApplicationRecord
  has_one: bank

  has_secure_password

  validates :email, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}

end
