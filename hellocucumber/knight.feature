Feature: Move Knight

  As a player
  I would like to move a knight
  So that I can capture an opponent's piece

     # Normal Flow
  Scenario: move a knight towards a corner square in L shape
    Given it is my turn to make a move
    And an opponent's piece is located in a corner of the L shape
    When I move the knight towards the opponent's piece
    Then the opponent's piece is captured

    # Error Flow
  Scenario: move a knight vertically or horizontally
    Given it is my turn to make a move
    When I try to move the knight vertically or horizontally
    Then an error message is prompted "Invalid Move"

    # Error Flow
  Scenario: move a knight diagonally
    Given it is my turn to make a move
    When I try to move the knight diagonally
    Then an error message is prompted "Invalid Move"