Feature: View Rating Leaderboard

As a player
I would like to see a leaderboard of top-rated players
So that I can compare my skill level relative to top players

Background:

Given users with the following ratings exist in the system:
| user    | rating |
| Mikhail | 2000   |
| Boris   | 2300   |
| Bobby   | 1500   |
| Fabiano | 2100   |
| Magnus  | 2200   |

# Normal Flow
Scenario: View top 3 players
When attempting to view the top "3" rated players
Then the following leaderboard is returned:
| rank | user    | rating |
| 1    | Boris   | 2300   |
| 2    | Magnus  | 2200   |
| 3    | Fabiano | 2100   |

# Alternate Flow
Scenario: View top 10 players when not enough players exist in system
When attempting to view the top "10" rated players
Then the following leaderboard is returned:
| rank | user    | rating |
| 1    | Boris   | 2300   |
| 2    | Magnus  | 2200   |
| 3    | Fabiano | 2100   |
| 4    | Mikhail | 2000   |
| 5    | Bobby   | 1500   |
