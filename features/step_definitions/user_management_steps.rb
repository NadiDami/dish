def sign_up_alex
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', :with => "alex@makers.com"
  fill_in 'Password', :with => "12345678"
  fill_in 'Password confirmation', :with => "12345678"
  click_button 'Sign up'
end

Then(/^Alex signs up with email with valid credentials$/) do
  sign_up_alex
end

Given(/^Alex is logged in$/) do
  sign_up_alex
end