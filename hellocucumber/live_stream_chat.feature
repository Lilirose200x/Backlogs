Feature: Live Stream Chat

  As a livestream viewer
  I would like to chat in a live lobby
  So that I can interact with the other spectators

  # Normal Flow
  Scenario: send a regular message
    Given I sign in to my account
    And I am in a live channel
    When I attempt to send a message
    And the content is appropriate
    Then the message successfully send to the text channel

  # Error Flow
  Scenario: attempt to send a message with inappropriate content
    Given I sign in to my account
    And I am in a live channel
    When I attempt to send a message
    And the message contains illegal or other contents violates the terms of use
    Then the message sent failed with notification of inappropriate content

   # Error Flow
  Scenario: send a empty message
    Given I sign in to my account
    And I am in a live channel
    When I attempt to send a message
    And the blog is empty without any content
    Then the message sent failed with notification of empty content error