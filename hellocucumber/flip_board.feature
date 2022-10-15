Feature: Flip Board

  As a player or spectator
  I would like to flip the display of the chess board
  So that I can see the position from the perspective of either side

  # Normal Flow
  Scenario: flip the board on click
    Given a player is in a game
    When the player attempt to flip the board
    Then the board black side and white side is swapped

    # Alternate Flow
  Scenario: flip the board back
    Given a player is in a game
    When the player attempt to flip the board back
    Then the board black side and white side is swapped and turns back to the original orientation

    # Error Flow
  Scenario: event execution failed
    Given a player is in a game
    When the player attempt to flip the board
    And the front end flip function execution failed or did not response
    Then the board remained in original position, the user need to click again