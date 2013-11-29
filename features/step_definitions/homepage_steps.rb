Given(/^the "(.*?)" restaurant has been saved$/) do |name|
  FactoryGirl.create(:restaurant)
end
