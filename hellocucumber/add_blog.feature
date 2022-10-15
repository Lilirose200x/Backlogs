Feature: Add Blog

  As a user
  I would like to post blogs
  So that I can have interaction with the community

  # Normal Flow
  Scenario: post a regular blog
    Given I sign in to my account
    When I attempt to post a blog
    And the content is appropriate
    Then the blog successfully post online in the community

  # Error Flow
  Scenario: attempt to post a blog with inappropriate content
    Given I sign in to my account
    When I attempt to post a blog
    And the blog contains illegal or other contents violates the terms of use
    Then the blog post failed with notification of inappropriate content

   # Error Flow
  Scenario: post a blog without content
    Given I sign in to my account
    When I attempt to post a blog
    And the blog is empty without any content
    Then the blog post failed with notification of empty content error