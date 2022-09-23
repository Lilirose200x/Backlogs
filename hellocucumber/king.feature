Feature: Move King

  As a player
  I would like to move the king
  So that I can capture an opponent's piece or avoid a checkmate

     # Normal Flow
  Scenario: move the king one square in any direction
    Given it is my turn to make a move
    And an opponent's piece is located in king's neighbourhood
    When I move the king towards the opponent's piece
    Then the opponent's piece is captured

    # Alternate Flow
  Scenario: do the castling
    Given it is my turn to make a move
    And no piece is located between the king and the rook
    And both the king and rook involved in castling have never been moved
    When I do the castling
    Then the king is moved two squares towards the rook
    And the rook is located on the other side of the king
    And the rook is adjacent to the king

     # Error Flow
  Scenario: move the king across more than one square
    Given it is my turn to make a move
    When I try to move the king more than one square
    Then an error message is prompted "Invalid Move"
