Scenario: View Opponent Rating

As a player
I would like to see the rating of my opponent
So that I can evaluate their skill relative to mine

Given users with the following ratings exist in the system:
| user    | rating |
| Mikhail | 2000   |

# Normal Flow
Scenario: View opponent rating
Given I am a logged in user
And I am currently playing a game against "Mikhail"
When I attempt to view my opponents rating
Then the rating "2000" is returned

# Error Flow
Scenario: Attempt to view opponent rating without being in a game
Given I am a logged in user
And I am not playing a game
When I attempt to view my opponents rating
Then the "Not in a game" error message is issued
