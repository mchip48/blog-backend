class User < ApplicationRecord
  has_secure_password #hashes password and allows us to use password and password confirmation
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
