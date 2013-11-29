Feature: The Dish Homepage
        Given I am a user of the website
        I need some kind of user interface

        Background: The homepage
                Given the "Red Star" restaurant has been saved
                Given I am on the homepage

        Scenario: The title
                Then I should see "Dish"

        Scenario: Viewing saved restaurants
                Then I should see "Red Star"

        Scenario: Adding new restaurants
                And I should see "Add new restaurant"