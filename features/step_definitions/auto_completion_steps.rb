Given(/^I am on the root page$/) do
  visit root_path
end

When(/^I fill in any city in the input box$/) do
  fill_in('searchInput', with: 'Berlin')
end

Then(/^I should see some suggestions appearing below the input box$/) do
  page.should have_content('Berlin')
end
