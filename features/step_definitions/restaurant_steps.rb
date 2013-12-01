Given(/^I add restaurant "(.*?)" with city "(.*?)" and description "(.*?)"$/) do |name, city, description|
  visit new_restaurant_path
  fill_in 'Name', :with => name
  fill_in 'City', :with => city
  fill_in 'Description', :with => description
  click_button 'Submit restaurant'
end


Given(/^I edit "(.*?)" with city "(.*?)"$/) do |name, city|
  click_link name
  click_link 'Edit restaurant'
  fill_in 'City', :with => city
  click_button 'Submit restaurant'
end

Given(/^I delete "(.*?)"$/) do |name|
  click_link name
  click_link 'Delete restaurant'
end