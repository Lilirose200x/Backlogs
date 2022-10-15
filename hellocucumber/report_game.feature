Scenario: Report Game

As a user
I would like to report a game for suspicious behaviour
So that a moderator can evaluate whether my opponent was cheating

Background:
Given the following users exist in the system:
| user |
| Bob  |
| Fred |
| Joe  |
| Tim  |
And the following games have been played:
| game_id | white | black |
| 1       | Bob   | Fred  |
| 2       | Fred  | Bob   |
| 3       | Joe   | Fred  |
| 4       | Fred  | Bob   |
| 5       | Bob   | Joe   |

# Normal Flow
Scenario: Report one of my games
Given I am logged in as the user "Bob"
When I attempt to report game "5"
Then the game "5" has been reported

# Alternate Flow
Scenario: Report one of my games where I played as black
Given I am logged in as the user "Bob"
When I attempt to report game "2"
Then the game "2" has been reported

# Error Flow
Scenario: Attempt to report someone else's game
Given I am logged in as the user "Joe"
When I attempt to report game "4"
Then the game "4" has not been reported
And the "Cannot report this game" error message is issued

# Error Flow
Scenario: Attempt to report non-existent game
Given I am logged in as the user "Joe"
When I attempt to report game "6"
Then the "Cannot report this game" error message is issued

# Error Flow
Scenario: Attempt to report game as logged out user
Given I am a logged out user
When I attempt to report game "4"
Then the game "4" has not been reported
And the "Cannot report this game" error message is issued