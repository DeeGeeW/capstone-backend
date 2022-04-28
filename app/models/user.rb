class User < ApplicationRecord
  
  validates :username, uniqueness: true
  validates :username, length: {in: 7..15}
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
