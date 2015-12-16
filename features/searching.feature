Feature: Searching for Findly

  Scenario: Searching Google
    Given I am on Google.com
    When I search for "findly"
    Then findly.com is the first result
