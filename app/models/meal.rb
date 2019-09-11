class Meal < ApplicationRecord
  validates :rating, inclusion: { in: 1..10, message: 'Must be between 1 and 10' }
  #validates :presence
  belongs_to :cuisine
  belongs_to :user
end
