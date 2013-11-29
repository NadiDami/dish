Feature: Adding new restaurants
        Given I want to be able to review restaurants
        As a user of the website 
        I need to be able to add new restaurants

        Background: The homepage
                Given I am on the homepage

        Scenario: Form for adding new restaurants
                And I click "Add new restaurant"
                Then I should see "Where have you eaten recently?"

        Scenario: Adding a new restaurant
                Given I add restaurant "Rotary" with location "London"
                Then I should see "Rotary"