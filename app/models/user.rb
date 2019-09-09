class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true
  has_many :meals
  has_many :cuisines, through: :meals


  #scope method
end
