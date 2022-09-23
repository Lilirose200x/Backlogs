Feature: Send Friend Request

  As a user
  I would like to send friend requests to other users
  So I can play chess with them afterwards

  # Normal Flow
  Scenario Outline: send friend requests to other users
    Given I have signed in successfully
    When  I <userA> send a friend request to another user <playerB>
    Then <userB> receives my friend request

    Examples:
      | userA   | userB   |
      | lily    | bob     |

  # Error Flow
  Scenario: send a friend request to an non-existent user
    Given I have signed in successfully
    When I try to send a friend request to an non-existent user
    Then an error message is prompted "User does not exist"

  # Error Flow
  Scenario: send a friend request to a user who is already in the friend list
    Given I have signed in successfully
    Given that "nonExistingPlayer" does not exist in the system
    When I try to send a friend request to a user who is already in my friend list
    Then an error message is prompted "User is already your friend"
