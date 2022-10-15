Feature: Display Friend List

  As a user
  I would like to see my list of friends and their status
  So that I can start a game with them or chat with them

  # Normal Flow
  Scenario: display the friend list successfully
    Given the user is signed in
    When the user open his/her friend list and want to see who is online
    Then the list of friends with their status displayed

    # Alternate Flow
  Scenario: alert the user did not sign in
    Given the user is not signed in
    When the user open his/her friend list and want to see who is online
    Then the message pops to ask the user to sign in

    # Error Flow
  Scenario: report error when get friend list error due to other issues
    Given the network has some issue to pull the friend list of a user from server
    When the user open his/her friend list and want to see who is online
    Then the error message pops to inform the network issue, please try again later