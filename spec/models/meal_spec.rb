require 'spec_helper'

describe Meal do
  
  it { should belong_to(:restaurant) }

end
