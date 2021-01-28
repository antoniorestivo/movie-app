class Movie < ApplicationRecord
  validates :title, presence:true
  validates :year, presence:true
  validates :plot, presence:true
  validates :director, presence:true
  validates :year, numericality: 
  {greater_than_or_equal_to: 1888}
  validates :english, presence:true
  
  has_many :actors
end
