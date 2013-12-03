require 'spec_helper'

describe Meal do
  
  it { should belong_to(:restaurant) }
  it { should have_many(:ratings) }
  it { should have_many(:raters)}

  describe '.ratings_total' do

    it 'should correctly calculate a rating of 1' do
       meal = Meal.create name: 'Chicken soup'
       meal.stub(:rating_of) do |n|
        if n==1
          [double(:rating)]
        else
          []
        end
      end
       expect(meal.ratings_total).to eq 1
     end

    it 'should correctly calculate a rating of 6' do
       meal = Meal.create name: 'Chicken soup'
       meal.stub(:rating_of) do |n|
        if n==1 || n==5
          [double(:rating)]
        else
          []
        end
      end
       expect(meal.ratings_total).to eq 6
     end

    it 'should correctly calculate an average rating' do
      meal = Meal.create name: 'Chicken soup'
       meal.stub(:rating_of) do |n|
        if n==1 || n==5
          [double(:rating)]
        else
          []
        end
      end
      meal.stub total_number_of_ratings: 2
      expect(meal.average_ratings_total).to eq 3      
    end

  end
end
