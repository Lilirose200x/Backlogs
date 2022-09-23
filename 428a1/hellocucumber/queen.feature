Feature: move queen

  As a player
  I would like to move the queen
  So that I can capture an opponent's piece

     # Normal Flow
  Scenario: move the queen any number of squares in any direction
    Given it is my turn to make a move
    And an opponent's piece is located in the same line as my queen
    When I move the queen towards the opponent's piece
    Then the opponent's piece is captured

    # Error Flow
  Scenario: move the queen in l shape
    Given it is my turn to make a move
    When I try to move the queen in l shape
    Then an error message is prompted "Invalid Move"

    # Error Flow
  Scenario: move the queen across non-vacant squares
    Given it is my turn to make a move
    When I try to move the queen across non-vacant squares
    Then an error message is prompted "Invalid Move"