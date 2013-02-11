Feature: Browse boats
  So that I can browse through the boats
  As a visitor
  I want to be able to see choose a boat from a full list of boats and read it

  Scenario: Browsing a list of boats
    When I open boats page
    And I click on the link "New Boat"
    Then I fill "Name" with "xyz"
    And I fill "Model name" with "abc"
    And I fill "Model year" with "1234"
    Then I click the button "Create Boat"
    Then I should see "Boat was successfully created."
    And I should see "Name: xyz"
    