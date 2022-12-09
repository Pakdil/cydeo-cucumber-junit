Feature: User should be able to login using correct credentials

  @wip
  Scenario: Positive login scenario
    Given user is on the login page or web table app
    When user enters username "Test"
    And user enters password "Tester"
    And user clicks login button
    Then user should see url contains orders

