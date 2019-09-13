class Cuisine < ApplicationRecord
  validates :category, presence: true
  validates :classification, presence: true

  has_many :meals
  has_many :users, through: :meals
end
