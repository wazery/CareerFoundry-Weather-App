Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I fill in any country in the input box$/) do
  fill_in('searchInput', with: 'Berlin')
end

Then(/^I click on the Get Weather button$/) do
  click_on('getWeather')
end

Then(/^I should see the weather info displayed in the right corner$/) do
  page.should have_content('Berlin')
  page.should have_content('Weather Temp Min')
  page.should have_content('Weather Temp Max')
end
