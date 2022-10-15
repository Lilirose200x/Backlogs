Feature: Delete Comment

As a moderator
I would like to delete a comment on a forum post
So that I can maintain a healthy community enviornment

Background:
Given the following posts exist in the system:
| post_id | content |
| 1       | hello   |
| 2       | adfrk   |
| 3       | funny   |
And the following comments exist in the system:
| comment_id | content | post_id |
| 1          | nice    | 2       |
| 2          | nice2   | 2       |
| 3          | nice3   | 3       |
| 4          | nice4   | 2       |
| 5          | nice6   | 3       |

# Normal Flow
Scenario: Delete comment
Given I am logged into a moderator account
When attempting to delete the comment with id "1"
Then the comment with id "1" does not exist in the system
And post "2" will have "2" comments

# Error Flow
Scenario: Unauthorized user attempts to delete comment
Given I am a logged in user
When attempting to delete the comment with id "3"
Then the comment with id "3" exists in the system
And post "3" will have "2" comments
And the "Cannot perform this action" error message is issued

# Error Flow
Scenario: Attempt to delete a comment which does not exist
Given I am logged into a moderator account
When attempting to delete the comment with id "10"
Then the "Comment does not exist" error message is issued
