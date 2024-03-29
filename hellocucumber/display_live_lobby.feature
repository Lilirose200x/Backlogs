Feature: Display Live Lobby

  As a user
  I would like to spectate other players'duel
  So that I can learn from others and for entertainment

  # Normal Flow
  Scenario: display live matches with the stats in blocks
    Given there are lists of ongoing matches available for spectating
    When a user enter the live lobby
    Then the system provides a summary view of each ongoing matches, and provide links to the corresponding matches

    # Alternate Flow
  Scenario: note there are 0 matches live
    Given there are no matches available for spectating
    When a user enter the live lobby
    Then the system alert that currently there are no live match available
