Feature: Import Game To Analysis

As an analyst,
I would like to import a game played on the site
So that I can study one of my past games

# Normal Flow
Scenario: Import game in the system
Given I am a logged in user
And I am in an analysis session
And the game with id "1" exists in the system with the following list of moves:
| move          | white | black   |
| 1             | d4    | Nf6     |
| 2             | c4    | resigns |
When I attempt to import the game with id "1"
Then the game will be imported successfully
And the analysis session will have the following list of moves:
| move          | white | black   |
| 1             | d4    | Nf6     |
| 2             | c4    | resigns |

# Error Flow
Scenario: Attempt to import a game which does not exist
Given I am a logged in user
And I am in an analysis session
And the game with id "1" does not exist in the system
When I attempt to import the game with id "1"
Then the game will not be imported
And the "Could not find game" error message will be issued

# Error Flow
Scenario: Attempt to import a game without an analysis session
Given I am a logged in user
And I am not in an analysis session
And I attempt to import the game with id "1"
Then the game will not be imported
And the "Not in an analysis session" error message will be issued
