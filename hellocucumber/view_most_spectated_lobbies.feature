Feature: View Most Spectated Lobbies

As a user
I would like to view a list of most spectated lobbies
So that I can watch an exciting game

Background:
Given the following games are in progress:
| game_id |
| 1       |
| 2       |
| 3       |
| 4       |

Given users spectating the following games:
| user | spectating_game |
| Bob  | 1               |
| Jon  | 1               |
| Joe  | 1               |
| Odie | 1               |
| Garf | 1               |
| Ben  | 1               |
| Gob  | 2               |
| Fred | 2               |
| Tim  | 3               |
| How  | 3               |
| Egg  | 3               |
| Ham  | 3               |


# Normal Flow
Scenario: View list of most spectated games
When attempting to view the top "5" most spectating games
Then the following list of games is returned:
| game_id | spectators |
| 1       | 6          |
| 3       | 4          |
| 2       | 2          |
| 4       | 0          |