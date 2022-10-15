Feature: Create Analysis Session

As a user
I would like to create an analysis session
So that I can study custom positions of my choosing

# Normal Flow
Scenario: Create an analysis board
Given I am a logged in user
And I am not playing a game
When I attempt to create an analysis board
Then the analysis board is created in the system
And the analysis board belongs to the logged in user

# Error Flow
Scenario: Logged out user attempts to create an analysis board
Given I am a logged out user
When I attempt to create an analysis board
Then no analysis board is created
And the error message "Must be logged in to use analysis" is issued

# Error Flow
Scenario: Attempt to create analysis board while in a game
Given I am a logged in user
And I am currently playing a game
When I attempt to create an analysis board
Then no analysis board is created
And the error message "Cannot use analysis while in a game" is issued
