Feature: Price_sorting

  Scenario: Verify that priceses are sorted ascending

    When I open "www.goeuro.com"
    And I search for route from "Berlin" to "Prague"
    Then prices of the tickets are displayed and sorted ascending
