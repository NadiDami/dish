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

  #   context '.sorted_by_average_rating' do

  #   it 'puts highly rated posts first' do
  #     high_rating = Factory
  #     low_rating = Post.new(title: 'Hello Natty', body: 'Hello Natty')

  #     popular.stub votes_total: 8
  #     less_popular.stub votes_total: 3

  #     Post.stub(all: [less_popular, popular])

  #     expect(Post.sorted_by_votes.first).to eq popular
  #   end

  # end

  end
end
