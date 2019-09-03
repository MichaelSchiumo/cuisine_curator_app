class User < ApplicationRecord
  has_many :meals
  has_many :cuisines, through: :meals
end
