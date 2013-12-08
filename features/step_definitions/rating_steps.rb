Then(/^I should see the rating buttons$/) do
  expect(page).to have_css '.button_to'
end

Then(/^I rate "(.*?)" with a "(.*?)"$/) do |meal, rating|
  click_button rating
  expect(page).to have_css '.ratings-count', text: rating
end
