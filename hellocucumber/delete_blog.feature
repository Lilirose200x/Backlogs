Feature: Delete Blog

  As a manager
  I would like to delete illegal blogs
  So that I can maintain a healthy community environment

  # Normal Flow
  Scenario: delete an illegal blog
    Given I sign in to my account
    And a user publishes an illegal blog
    When I delete the user's blog
    Then the illegal blog does not exist
    And the user receives a warning

  # Error Flow
  Scenario: delete a legal blog Accidentally
    Given I sign in to my account
    And a user publishes a legal blog
    When I delete the user's blog accidentally
    And the user requests a complaint
    Then the blog need to be restored from system
    And the user should receive rewards as compensations

   # Error Flow
  Scenario: delete an non-existent blog
    Given I sign in to my account
    When I try to delete an non-existent blog
    Then an error message is prompted "Blog does not exist"