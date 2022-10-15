Feature: Timer

  As a player
  I would like to play chess with time control
  So that I can ensure that a match will not last too long

      # Normal Flow
  Scenario: timer display the remaining time
    Given a game started with status ongoing
    When a player start his/her turn to move
    Then the timer start to count down

    # Alternate Flow
  Scenario: timer pause when a player finish the turn and wait for next player to start
    Given a game started with status ongoing
    When a player finish his/her turn to move
    Then the timer count down pause

    # Alternate Flow
  Scenario: timer count to 0, player time out
    Given a game started with status ongoing
    When a player started his/her turn but not make valid move
    Then the timer count to 0, and report time out, system make a random move
