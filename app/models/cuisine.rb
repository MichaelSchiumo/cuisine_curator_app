class Cuisine < ApplicationRecord
  has_many :meals
  has_many :users, through: :meals
end
