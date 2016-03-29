Feature: A simple test to show custom format methods

  @selenium
  Scenario: Run a google search
    Given I enter something into google
    When I run the search
    Then I see results
