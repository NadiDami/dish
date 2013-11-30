require 'spec_helper'

describe Restaurant do
  let(:restaurant) {Restaurant.new}

  it { should have_many(:meals) }

  it 'has a description' do
    expect(restaurant).to respond_to :description
  end
  
end