Feature: As a user
         I want to sign in
         So the website will know who I am

  Scenario: The user signs in
    Given a registered user
    When the user provides their credentials
    And attempts to sign in
    Then the user has access to the website

  Scenario: The user gives the wrong password
    Given a registered user
    When the user provides the wrong password
    And attempts to sign in
    Then the website asks the user to try again