Feature: As a user
         I want to be able to register
         So I can use the website

  Scenario: Create a new user
    Given an unregistered user
    When the user visits the registration page
    And applies for an account using valid information
    Then the users account is created

  Scenario: Attempt to create a new user without all the required data
    Given an unregistered user
    When the user visits the registration page
    And applies for an account using insufficient information
    Then the users account is not created
    And the application asks for the missing information