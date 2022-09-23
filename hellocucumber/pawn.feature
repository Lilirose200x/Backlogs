Feature: Move Pawn

  As a player
  I would like to move a pawn
  So that I can arrive

     # Normal Flow
  Scenario: move a pawn one square forwards
    Given it is my turn to make a move
    When I move the pawn one square forwards
    Then the pawn is getting closer to the last rank of the board

     # Alternate Flow
  Scenario: move a pawn two squares forwards at the beginning
    Given it is my turn to make a move
    And I never move the pawn
    When I move the pawn two squares forwards
    Then the pawn is getting closer to the last rank of the board

    # Alternate Flow
  Scenario: promote the pawn into any other pieces except the king
    Given it is my turn to make a move
    And the pawn reaches the last row of the board
    When I promote the pawn
    Then the pawn can be any other pieces except the king

    # Error Flow
  Scenario: move a pawn backwards
    Given it is my turn to make a move
    When I try to move the pawn backwards
    Then an error message is prompted "Invalid Move"