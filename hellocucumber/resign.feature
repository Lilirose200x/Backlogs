Feature: Resign

  As a player
  I would like to resign when I am about to lose
  So that we can start next match

    # Normal Flow
  Scenario: player request to resign and confirmed
    Given the player is in a game
    When the player send the request to resign
    And the player confirmed the request
    Then the game end, the opponent wins

    # Alternate Flow
  Scenario: player request to resign and canceled
    Given the player is in a game
    When the player send the request to resign
    And the player canceled the request
    Then the game continues

     # Alternate Flow
  Scenario: player request to resign, neither confirmed nor canceled for 10 seconds
    Given the player is in a game
    When the player send the request to resign
    And the player did not response to the action for 10 seconds
    Then the game continues by default