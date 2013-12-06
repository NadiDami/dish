require 'spec_helper'

describe Meal do
  
  it { should belong_to(:restaurant) }
  it { should have_many(:ratings) }
  it { should have_many(:raters)}

  let(:meal) {FactoryGirl.create(:meal)}

  describe '.ratings_total and .average_ratings_total' do

    it 'should correctly calculate a rating of 1' do
       FactoryGirl.create(:rating)
       expect(meal.ratings_total).to eq 1
     end

    it 'should correctly calculate a rating of 6' do
       FactoryGirl.create(:rating)
       FactoryGirl.create(:rating, value: 5)
       expect(meal.ratings_total).to eq 6
     end

    it 'should correctly calculate an average rating' do
      FactoryGirl.create(:rating)
      FactoryGirl.create(:rating, value: 5)
      expect(meal.average_ratings_total).to eq 3
    end

    context '.sorted_by_average_rating' do

    it 'puts highly rated meals first' do
      high_rating = FactoryGirl.create(:meal)
      low_rating = FactoryGirl.create(:meal, id: 11)

      high_rating.stub average_ratings_total: 4.55
      low_rating.stub average_ratings_total: 2.49

      Meal.stub(all: [high_rating, low_rating])

      expect(Meal.sorted_by_average_ratings.first).to eq high_rating
    end

  end

  end
end
