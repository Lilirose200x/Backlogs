Feature: Remove Friend

  As a user
  I would like to remove a friends
  So they can no longer send me game requests

  # Normal Flow
  Scenario Outline: remove a friend
    Given I <userA> have signed in successfully
    When  I remove a friend <userB>
    Then <userB> is no longer in my friend list

    Examples:
      | userA   | userB  |
      | lily    | bob    |

  # Error Flow
  Scenario: remove an user who is not in the friend list
    Given I have signed in successfully
    When I try to remove an user who is not in my friend list
    Then an error message is prompted "User is not your friend"

  # Error Flow
  Scenario: remove an non-existent user
    Given I have signed in successfully
    When I try to remove an non-existent user from my friend list
    Then an error message is prompted "User does not exist"
