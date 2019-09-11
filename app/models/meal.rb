class Meal < ApplicationRecord
  validates :rating, inclusion: { in: 1..10, message: 'Must be between 1 and 10' }
  validates :difficulty, inclusion: { in: 1..5, message: 'Must be between 1 and 5' }
  validates :name, presence: true
  validates :ingredients, presence: true
  validates :course, presence: true
  validates :notes, presence: true
  validates :name, uniqueness: true
  validates :prep_time, presence: true
  #validates :presence
  belongs_to :cuisine
  belongs_to :user
  has_many :ingredients
end
