Scenario: View Reported Games

As a moderator
I would like to see a list of reported games
So I can analyze whether players were cheating

Background:
Given the following games with reports exist in the system:
| game_id | reported |
| 1       | true     |
| 2       | false    |
| 3       | false    |
| 4       | true     |

# Normal Flow
Scenario: Moderator views list of reported games
Given I am logged into a moderator account
When requesting to view the list of reported games
Then the following list is returned:
| game_id |
| 1       |
| 4       |

# Error Flow
Scenario: User attempts to view list of reported games
Given I am a logged in user
When requesting to view the list of reported games
Then the "Cannot preform this action" error message is issued