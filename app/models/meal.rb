class Meal < ActiveRecord::Base
  belongs_to :restaurant
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users

  def ratings_total
    1.upto(5).inject(0) { |memo, number| memo + (rating_of(number)).size * number }
  end

  def average_ratings_total
      return 0 if total_number_of_ratings == 0
      (ratings_total/ total_number_of_ratings.to_f).round(2)
  end

  def self.sorted_by_average_ratings
    all.sort_by { |meal| meal.average_ratings_total || 0 }.reverse
  end

  private

  def rating_of number
    ratings.where value: number
  end

  def total_number_of_ratings
     ratings.size
  end

end

