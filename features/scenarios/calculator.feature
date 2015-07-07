Feature: Addition
  In order to check my work
  As a mathematician
  I want to be told the sum of two numbers

  Scenario: Regular numbers
    Given I have entered 3 into the calculator
    And I have entered 2 into the calculator
    When I add
    Then the result should be 5 on the screen

  Scenario: Floating point numbers
    Given I have entered 3.5 into the calculator
    And I have entered 5.2 into the calculator
    When I add
    Then the result should be 8.7 on the screen

  Scenario Outline: Add numbers
    Given I have entered <x> into the calculator
    And I have entered <y> into the calculator
    When I add
    Then the result should be <sum> on the screen
  Examples:
    | x   | y   | sum |
    | 3   | 2   | 5   |
    | 3.5 | 5.2 | 8.7 |
