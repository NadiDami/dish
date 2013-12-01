Feature: In order to be able to submit a restaurant or meal
        As a new or existing user of the site
        I need to be able to sign up

        Background: No user logged in
                Given I am on the homepage

        Scenario: User links
                Then I should see "Sign up"
                And I should see "Sign in"

        Scenario: Trying to add a restaurant not having signed in
                Then I click "Add new restaurant"
                And I should see "You need to sign in or sign up before continuing."

        Scenario: Signing up
                Then Alex signs up with email with valid credentials
                And I should see "Hi, alex@makers.com"
                And I should see "Edit account"
                And I should see "Sign out"
