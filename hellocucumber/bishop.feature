Feature: Move Bishop

  As a player
  I would like to play a legal move with my bishop
  So that I can move my bishop
  
     # Normal Flow
  Scenario: move a bishop diagonally
    Given it is my turn to make a move
    And an opponent's piece is located in the same diagonal as my bishop
    When I move the bishop diagonally towards the opponent's piece
    Then the opponent's piece is captured

    # Error Flow
  Scenario: move a bishop vertically or horizontally
    Given it is my turn to make a move
    When I try to move the bishop vertically or horizontally
    Then an error message is prompted "Invalid Move"

    # Error Flow
  Scenario: move a bishop across non-vacant squares
    Given it is my turn to make a move
    When I try to move the bishop diagonally across non-vacant squares
    Then an error message is prompted "Invalid Move"
