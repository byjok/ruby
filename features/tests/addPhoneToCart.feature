Feature: Add Iphone to cart.
  As an user i should be able to add Iphone to cart.

  Scenario: Click on add to cart and go to cart
    Given I found iphone 6 and selected it
    When I click add to cart button
    And I go to cart page
    Then I should see Iphone in cart