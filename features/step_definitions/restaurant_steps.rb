Given(/^I add restaurant "(.*?)" with location "(.*?)"$/) do |name, city|
  visit new_restaurant_path
  fill_in 'Name', :with => name
  fill_in 'City', :with => city
  click_button 'Submit restaurant'
end