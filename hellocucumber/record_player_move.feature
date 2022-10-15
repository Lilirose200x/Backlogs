Feature: Record Player Move

  As a player
  I would like the system to record each move
  So that I can review the moves made by myself and opponent

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