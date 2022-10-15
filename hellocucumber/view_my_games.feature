Scenario: View My Games

As a player
I would like to see a list of my games
So that I can choose to analyze them

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
Scenario: View my games
Given I am logged in as the user "Bob"
When I attempt to view my games
Then the following list is returned:
| game_id | opponent | color |
|       1 | Fred     | white |
|       2 | Fred     | black |
|       4 | Fred     | black |
|       5 | Joe      | white |

# Alternate Flow
Scenario: View games with no games played
Given I am logged in as the user "Tim"
When I attempt to view my games
Then the following list is returned:
| game_id | opponent | color |

# Error Flow
Scenario: View games when logged out
Given I am a logged out user
When I attempt to view my games
Then the "Not logged in" error message is issued