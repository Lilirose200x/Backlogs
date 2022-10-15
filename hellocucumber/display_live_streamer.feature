Feature: Display Live Streamer

  As a user
  I would like to view a list of streams on an external platform using the website
  So that I can find a streamer that I want to watch

  # Normal Flow
  Scenario: display live streamers with links to the room
    Given there are lists of ongoing streamer lives available
    When a user enter the streamer list
    Then the system provides a list view of each ongoing streamer lives, and provide links to the corresponding room

    # Alternate Flow
  Scenario: note there are 0 user doing streaming
    Given there are no streamer online, and no live tv available
    When a user enter the streamer list
    Then the system alert that there are currently no streamer is streaming

    # Error Flow
  Scenario: the network failed to get the live streamer list, report error
    Given the network has some issue to pull the live streamer list from server
    When a user enter the streamer list
    Then the system alert the network failure, please try again