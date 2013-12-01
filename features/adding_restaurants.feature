Feature: Adding new restaurants
        Given I want to be able to review restaurants
        As a user of the website 
        I need to be able to add new restaurants

        Background: The homepage
                Given the "Red Star" restaurant has been saved
                And I am on the homepage
                And Alex is logged in

        Scenario: Form for adding new restaurants
                And I click "Add new restaurant"
                Then I should see "Where have you eaten recently?"

        Scenario: Adding a new restaurant
                Given I add restaurant "Rotary" with city "London" and description "Tasty burgers and chicken rolls"
                Then I should see "Rotary"
                And I should see "Tasty burgers and chicken rolls"

        Scenario: Viewing a restaurant page
                Given I add restaurant "Rotary" with city "London" and description "Tasty burgers and chicken rolls"
                And I click "Red Star"
                Then I should see "Red Star"
                And I should not see "Rotary"

        Scenario: Editing a restaurant entry
                Given I edit "Red Star" with city "Bristol"
                Then I should see "Bristol"
                And I should not see "Oxford"

        Scenario: Deleting a restaurant entry
                Given I delete "Red Star"
                Then I should not see "Red Star"
