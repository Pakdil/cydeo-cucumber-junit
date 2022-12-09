Feature: Wikipedia search functionality and verifications

  #WSF-45234 --> potential jira ticket number

  Scenario: Wikipedia search functionality Title Verification
    Given User is on Wikipedia home page
    When User types "Bill Gates" in the wiki search box
    And User clicks wiki search button
    Then User sees "Bill Gates" is in the wiki title

  Scenario: Wikipedia Search Functionality Header Verification
    Given User is on Wikipedia home page
    When User types "Steve Jobs" in the wiki search box
    And User clicks wiki search button
    Then User sees "Steve Jobs" is in the main header

  @scenarioOutline
  Scenario Outline: Wikipedia search functionality Title Verification
    Given User is on Wikipedia home page
    When User types "<searchValue>" in the wiki search box
    And User clicks wiki search button
    Then User sees "<expectedTitle>" is in the wiki title
    Then User sees "<expectedMainHeader>" is in the main header

    @soccerPlayers
    Examples: search values we are going to be using in this scenario as below

      | searchValue       | expectedTitle     | expectedMainHeader |
      | Steve Jobs        | Steve Jobs        | Steve Jobs         |
      | Cristiano Ronaldo | Cristiano Ronaldo | Cristiano Ronaldo  |
      | Bob Marley        | Bob Marley        | Bob Marley         |
      | Antony Hopkins    | Antony Hopkins    | Antony Hopkins     |
      | Marie Curie       | Marie Curie       | Marie Curie        |

    @scientists
    Examples:
  | searchValue       | expectedTitle     | expectedMainHeader |
  | Isaac Newton      | Isaac Newton      | Isaac Newton       |
  | Antony Hopkins    | Antony Hopkins    | Antony Hopkins     |
  | Marie Curie       | Marie Curie    | Marie Curie     |


