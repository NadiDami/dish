Given(/^the "(.*?)" restaurant has been saved$/) do |name|
  FactoryGirl.create(:restaurant)
end

Given(/^I click "(.*?)"$/) do |link|
  click_link link
end
