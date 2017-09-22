# features/get_weather.feature
 Feature: Get Weather From OpenWeather API

@javascript
Scenario: User clicks on the input box and type any country
Given I am on the homepage
Then I fill in any country in the input box
Then I click on the Get Weather button
Then I should see the weather info displayed in the right corner
