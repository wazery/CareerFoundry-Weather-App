# features/autocomplete.feature
 Feature: Auto Complete

@javascript
Scenario: User clicks on the input box and type anything
Given I am on the root page
Then I fill in any city in the input box
Then I should see some suggestions appearing below the input box
