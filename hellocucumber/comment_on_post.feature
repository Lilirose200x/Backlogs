Scenario: Comment on Post

As a user
I would like to comment on a forum post
So that I can share my opinions about other player's games

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
Scenario: Post a comment on a comment-less post
Given I am a logged in user
When I attempt to comment on post "1" with the comment "woah"
Then post "1" will have "1" comments
And a comment with the content "woah" will be associated with post "1"

# Alternate Flow
Scenario: Post a comment on a post with comments
Given I am a logged in user
When I attempt to comment on post "2" with the comment "epic"
Then post "2" will have "4" comments
And a comment with the content "epic" will be associated with post "2"

# Error Flow
Scenario: Post a comment on a non-existent post
Given I am a logged in user
When I attempt to comment on post "7" with the comment "woah"
Then the comment will not be created
And the "Could not find post" error message will be issued

# Error Flow
Scenario: Try to post a comment when logged out
Given I am a logged out user
When I attempt to comment on post "3" with the comment "hello"
Then the comment will not be created
And post "3" will have "2" comments
And the "Not logged in" error message will be issued

