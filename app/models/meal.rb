class Meal < ActiveRecord::Base
  belongs_to :restaurant
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users
end
