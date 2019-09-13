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
  # has_many :ingredients


  scope :search_by_rating, -> (rating){where("rating = ?", rating)}

  scope :most_well_known, -> {joins(:characters).group('songs.id').order('COUNT("characters.character_count") DESC')}

  def self.sorted_by_rating
    self.all.sort do |meal1, meal2|
      meal2.rating <=> meal1.rating
    end
  end

end
