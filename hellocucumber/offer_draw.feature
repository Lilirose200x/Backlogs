Feature: Offer Draw

  As a player
  I would like to offer a draw to my opponent
  So that we can start next match

    # Normal Flow
  Scenario: one player request, another player agrees
    Given a player request to draw
    When the player request to draw and terminate the game before the system determines the result
    And another player agrees the draw
    Then the game terminate with draw result

    # Alternate Flow
  Scenario: one player request, another player rejects
    Given a player request to draw
    When the player request to draw and terminate the game before the system determines the result
    And another player refuses the draw
    Then the game continues, and notify the player who send request that the opponent rejected the request

     # Alternate Flow
  Scenario: one player request, another player does not response
    Given a player request to draw
    When the player request to draw and terminate the game before the system determines the result
    And another player does not response to the request
    Then the game continues, and notify the player who send request that the opponent did not response, default action to reject