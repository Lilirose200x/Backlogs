Feature: Edit Live Streamer

As a moderator
I would like to edit the list of featured external streamers
So that the best content is visible to users

Background:
Given the following list of featured live streamers exists in the system:
| streamer_name   | channel_link                             |
| Ben Finegold    | https://www.twitch.tv/gmbenjaminfinegold |
| Hikaru Nakamura | https://www.twitch.tv/gmhikaru           |

# Normal Flow
Scenario: Moderator adds a streamer to the list
Given I am logged into a moderator account
When attempting to add the streamer "Andrew Tang" with url "https://www.twitch.tv/penguingm1"
Then there are "3" featured channels
And "Andrew Tang" is among the featured channels

# Alternate Flow
Scenario: Moderator removes streamer from the list
Given I am logged into a moderator account
When attempting to remove the streamer "Hikaru Nakamura"
Then there are "3" featured channels
And "Hikaru Nakamura" is not among the featured channels

# Error Flow
Scenario: Unauthorized userr attempts to add streamer from list
Given I am a logged in user
When attempting to add the streamer "Alireza Firouzja" with url "https://www.twitch.tv/alirezafirouzja"
Then there are "2" featured channels
And "Alireza Firouzja" is not among the featured channels
