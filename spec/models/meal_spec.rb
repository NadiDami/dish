require 'spec_helper'

describe Meal do
  
  it { should belong_to(:restaurant) }
  it { should have_many(:ratings) }
  it { should have_many(:raters)}

  describe '.ratings_total' do

    it 'should correctly calculate a rating of 1' do
       meal = Meal.create name: 'Chicken soup'
       meal.stub rating_1: [double(:rating)]
       expect(meal.ratings_total).to eq 1
     end

    it 'should correctly calculate a rating of 6' do
       meal = Meal.create name: 'Chicken soup'
       meal.stub rating_1: [double(:rating)]
       meal.stub rating_5: [double(:rating)]
       expect(meal.ratings_total).to eq 6
     end

    it 'should correctly calculate an average rating' do
      meal = Meal.create name: 'Chicken soup'
      meal.stub rating_1: [double(:rating)]
      meal.stub rating_5: [double(:rating)]
      expect(meal.average_ratings_total).to eq 3      
    end

  end
end
