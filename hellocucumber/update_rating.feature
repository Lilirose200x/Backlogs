Scenario: Update Rating

As a player
I would like to have a rating which is updated when I finish a game
So that I can evaluate my skill

Background:
Given users with the following ratings exist in the system:
| user    | rating |
| Bobby   | 1500   |
| Boris   | 1500   |
| Mikhail | 2000   |

# Normal Flow
Scenario: Rating changes when game has winner
Given "Bobby" is playing a game against "Boris"
When "Bobby" wins the game
Then "Bobby" will have rating greater than "1500"
And "Boris" will have rating less than "1500"

# Alternative Flow
Scenario: Rating changes when game is drawn between differently rated players
Given "Bobby" is playing a game against "Mikhail"
When the game is drawn
Then "Bobby" will have rating greater than "1500"
And "Mikhail" will have rating less than "2000"

# Alternative Flow
Scenario: Rating does not change when game is drawn between equally rated players
Given "Bobby" is playing a game against "Boris"
When the game is drawn
Then "Bobby" will have rating equal to "1500"
And "Boris" will have rating equal to "1500"
