class Meal < ActiveRecord::Base
  belongs_to :restaurant
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users

  def ratings_total
    (rating_1.size * 1) + (rating_2.size * 2) + (rating_3.size * 3) + (rating_4.size * 4) + (rating_5.size * 5)
  end

  def average_ratings_total
      return 0 if total_number_of_ratings == 0
      (ratings_total/ total_number_of_ratings.to_f).round(2)
  end

  private

  def rating_1
    ratings.where value: 1
  end

  def rating_2
    ratings.where value: 2
  end

  def rating_3
    ratings.where value: 3
  end

  def rating_4
    ratings.where value: 4
  end

  def rating_5
    ratings.where value: 5
  end

  def total_number_of_ratings
     ratings.size
  end

end

