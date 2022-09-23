Feature: Edit Profile
  As a user
  I would like to edit my profile information
  So that I can introduce myself to other users

    # Normal Flow
  Scenario Outline: change the username

    Given I have an account registered with email <email> and username <username>
    When I change my username to <newUsername>
    Then my profile is updated successfully

    Examples:
      | email            | username | newUsername |
      | lily@email.com   | lily     | lily_123    |

    # Alternate Flow
  Scenario Outline: change the age

    Given I have an account registered with an email <email> and age <age>
    When I change the age to <newAge>
    Then my profile is updated successfully

    Examples:
      | email            | age | newAge |
      | lily@email.com   | 18  |  21    |

    # Alternate Flow
  Scenario Outline: change the signature

    Given I have an account registered with an email <email> and signature <signature>
    When I change the signature to <newSignature>
    Then my profile is updated successfully

    Examples:
      | email            | signature    |    newSignature    |
      | lily@email.com   | "I am happy" | "I have a bad day" |
