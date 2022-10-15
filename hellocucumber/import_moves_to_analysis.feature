Feature: Import Moves To Analysis

As an analyst
I would like to import a game from a list of moves
So that I can study a game played external to the site

# Normal Flow
Scenario: Import game from list of moves
Given I am a logged in user
And I am in an analysis session
When I attempt to import the list of moves:
| move          | white | black   |
| 1             | d4    | Nf6     |
| 2             | c4    | resigns |
Then the list of moves will be imported successfully
And the analysis session will have the following list of moves:
| move          | white | black   |
| 1             | d4    | Nf6     |
| 2             | c4    | resigns |

# Error Flow
Scenario: Attempt to import a game with an illegal sequence of moves
Given I am a logged in user
And I am in an analysis session
When I attempt to import the list of moves:
| move          | white | black   |
| 1             | d4    | Kd5     |
Then the game will not be imported
And the "Illegal sequence of moves" error message will be issued

# Error Flow
Scenario: Attempt to import a game without an analysis session
Given I am a logged in user
And I am not in an analysis session
When I attempt to import the list of moves:
| move          | white | black   |
| 1             | d4    | Nf6     |
| 2             | c4    | resigns |
Then the game will not be imported
And the "Not in an analysis session" error message will be issued