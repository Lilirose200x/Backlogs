Feature: View Player Moves

  As a player or spectator
  I would like to view a list of moves played a game
  So that I can review the moves made by each player
  And see if the game is about to be drawn by threefold repition of 50 move rule

    # Normal Flow
  Scenario Outline: record regular moves
    Given players are in the game
    When a player make a move
    And the move is valid
    Then the record is made to record the moving piece and destination position

    Examples:
      | turn          | player 1 | player 2  |
      | 1             | e3       | d5        |
      | 2             | b4       | knight f6 |


    # Alternate Flow
  Scenario Outline: erase the record when a takeback has been made
    Given players are in the game
    When a player request to take back
    And another player agrees
    Then the record of that move is erased

    Examples:
      | turn          | player 1 | player 2  |
      | 1             | e3       | d5        |
      | 2             | b4       |           |


     # Alternate Flow
  Scenario Outline: ignore the invalid move
    Given players are in the game
    When a player make a move
    And the move is invalid
    Then the move will not be recorded on the record board

    Examples:
      | turn          | player 1 | player 2  |
      | 1             | e3       | d5        |
      | 2             | b4       |           |