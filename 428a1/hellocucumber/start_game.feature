Feature: start a game

  As a player
  I would like to start a game
  So that I can enjoy playing chess

      # Normal Flow
  Scenario: play against friends
    Given I have signed in successfully
    And one of my friend has signed in successfully
    When I send an invitation to the friend
    And the friend accepts my invitation
    Then I can start a game

    # Alternate Flow
  Scenario: play against a random player
    Given I have signed in successfully
    When I choose to randomly match an opponent
    Then I can start a game

    # Alternate Flow
  Scenario: play against the computer
    Given I have signed in successfully
    When I choose to play against the computer
    Then I can start a game