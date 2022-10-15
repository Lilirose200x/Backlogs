Feature: Takeback

  As a player
  I would like to request takeback when I made a move
  So that I can make a better move

    # Normal Flow
  Scenario: one player request, another player agrees
    Given a player request to takeback
    When the player request to takeback and make another move instead
    And another player agrees the takeback request
    Then the board returns to the last status, and continues

    # Alternate Flow
  Scenario: one player request, another player rejects
    Given a player request to takeback
    When the player request to takeback and make another move instead
    And another player refuses the takeback request
    Then the game continues, and notify the player who send request that the opponent rejected the request

     # Alternate Flow
  Scenario: one player request, another player does not response
    Given a player request to takeback
    When the player request to takeback and make another move instead
    And another player does not response to the request
    Then the game continues, and notify the player who send request that the opponent did not response, default action to reject