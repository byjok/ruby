Feature: Find Iphone.
  As an user i should be able to find Iphone on site.

  Scenario Outline: Enter search information and go to first result
    Given I am on the main page
    When I enter search term as <searchTerm>
    And I click on Search button
    And I Select first result
    Then I should see <colors> of phone

    Examples:
    |searchTerm|colors|
    |iphone 6  |Space Grey|





