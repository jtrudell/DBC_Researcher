class Cohort < ActiveRecord::Base
  has_many :experiments

  validates :name, :year, :location, :num_of_students, presence: true
  validates :year, numericality: {greater_than_or_equal_to: 2000}
end
