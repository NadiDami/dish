Feature: Adding meals to restaurants 
        Given I want to be able to see dish recommendations
        As a user of the website
        I need to be able to add new meals

        Background: Restaurant page
                Given the "Red Star" restaurant has been saved
                And the "Chicken Broth" meal has been saved                
                Given I am on the "Red Star" page

        Scenario: Viewing already saved meals
                Then I should see "Chicken Broth"

        Scenario: New dish form          
                When I click "Add a new dish"
                Then I should see "Fill in details of the dish"

        Scenario: Adding a new dish     
                And I add the "Udon Hotpot" dish with price "8" and meal stage "Main course"
                Then I should see "Udon Hotpot"
                And I should see "£8"
                And I should see "Main course"




