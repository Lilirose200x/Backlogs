Feature: Move Rook

  As a player
  I would like to move a rook
  So that I can capture an opponent's piece

     # Normal Flow
  Scenario: move a rook vertically or horizontally
    Given it is the player's turn to make a move
    And an opponent's piece is located in the same row or column as my rook
    When I move the rook towards the opponent's piece
    Then the opponent's piece is captured

    # Error Flow
  Scenario: move a rook diagonally
    Given it is my turn to make a move
    When I try to move the rook diagonally
    Then an error message is prompted "Invalid Move"

    # Error Flow
  Scenario: move a rook across non-vacant squares
    Given it is my turn to make a move
    When I try to move the rook across non-vacant squares
    Then an error message is prompted "Invalid Move"