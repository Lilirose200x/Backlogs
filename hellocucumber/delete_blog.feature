Feature: Delete Post

  As a moderator
  I would like to delete innapropriate posts
  So that I can maintain a healthy community environment

  # Normal Flow
  Scenario: delete an innapropriate post
    Given I sign in to my account
    And a user publishes an illegal blog
    When I delete the user's blog
    Then the illegal blog does not exist
    And the user receives a warning

  # Error Flow
  Scenario: delete an non-existent blog
    Given I sign in to my account
    When I try to delete an non-existent blog
    Then an error message is prompted "Blog does not exist"