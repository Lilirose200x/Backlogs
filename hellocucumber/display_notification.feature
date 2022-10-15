Feature: Display Notification

  As a user
  I would like to receive message from friends and system
  So that I can send messages to them, and get up-to-date notification

  # Normal Flow
  Scenario: notification provide to the signed-in user
    Given a user is signed in
    And there are messages or notification
    When a user attempts to check the notification box
    Then a list of messages provide to the user

    # Alternate Flow
  Scenario: no notification to the signed-in user
    Given a user is signed in
    And there are no messages nor notification
    When a user attempts to check the notification box
    Then the system display that there are no messages to the user

    # Alternate Flow
  Scenario: alert to sign in to receive messages
    Given a user did not signed in
    When a user attempts to check the notification box
    Then the system asks the user to receive messages