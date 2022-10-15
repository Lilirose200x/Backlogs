Feature: Check Game End

  As a player
  I would like my game to end when a player wins or draws
  So that I can start next game or exit

     # Normal Flow
  Scenario: a player win
    Given a game has a status ongoing, and a player finished a move
    When the system confirmed that a player is being checked mate and no possible moves to save
    Then the game turns to end status and announce the winner

    # Alternate Flow
  Scenario: players draw (stalemate)
    Given a game has a status ongoing, and a player finished a move
    When the system confirmed that no player can win and in a 'dead lock' where no other legal moves available
    Then the game turns to stalemate end status and announce the draw result

    # Alternate Flow
  Scenario: normal move without ending the game
    Given a game has a status ongoing, and a player finished a move
    When there are other possible moves available can be made
    Then the game remain in the status ongoing and make next player to move

