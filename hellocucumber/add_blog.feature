Feature: Add Post

  As a user
  I would like to post on a forum
  So that I can discuss one of my games or chess in general

  # Normal Flow
  Scenario: Regular post on forum
    Given I sign in to my account
    When I attempt to post a blog
    And the content is appropriate
    Then the blog successfully post online in the community

  # Error Flow
  Scenario: Attempt to post with inappropriate content
    Given I sign in to my account
    When I attempt to post a blog
    And the blog contains illegal or other contents violates the terms of use
    Then the blog post failed with notification of inappropriate content

   # Error Flow
  Scenario: Attempt to post without content
    Given I sign in to my account
    When I attempt to post a blog
    And the blog is empty without any content
    Then the blog post failed with notification of empty content error