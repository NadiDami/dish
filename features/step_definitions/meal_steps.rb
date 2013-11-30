Given(/^the "(.*?)" meal has been saved$/) do |name|
  FactoryGirl.create(:meal)
end

Given(/^I add the "(.*?)" dish with price "(.*?)" and meal stage "(.*?)"$/) do |name, price, meal_stage|
  click_link 'Add a new dish'
  fill_in 'Name', :with => name
  fill_in 'Price', :with => price
  choose('meal_meal_stage_main_course')
  click_button 'Submit dish'
end