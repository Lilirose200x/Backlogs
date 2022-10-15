Feature: View Computer Analysis

As an analyst
I would like to request a computer evaluation of a position
So that I can see what moves could be improved upon

# Normal Flow
Scenario: Request Computer Analysis
Given I am a logged in user
And I am in an analysis session
And the analysis session has at least one move in the move list
When I attempt to view a computer analysis
Then a numerical value has been assigned to each move in the move list

# Error Flow
Scenario: Attempt to view computer analysis without an analysis session
Given I am a logged in user
And I am not in an analysis session
When I attempt to view a computer analysis
Then the "Not in an analysis session" error message will be issued