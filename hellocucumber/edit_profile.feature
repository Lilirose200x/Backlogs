Feature: Edit Profile
  As a user
  I would like to edit my profile information
  So that I can introduce myself to other users

      # Normal Flow
  Scenario Outline: change the username

    Given the user with an email <email> and username <username>
    When the user changes the username to <newUsername>
    Then the user's username is updated successfully

    Examples:
      | email            | username | newUsername |
      | lily@email.com   | lily     | lily_123    |

    # Alternate Flow
  Scenario Outline: change the age

    Given the user with an email <email> and age <age>
    When the user changes the age to <newAge>
    Then the user's age is updated successfully

    Examples:
      | email            | age | newAge |
      | lily@email.com   | 18  |  21    |

    # Alternate Flow
  Scenario Outline: change the signature

    Given the user with an email <email> and signature <signature>
    When the user changes the signature to <newSignature>
    Then the user's signature is updated successfully

    Examples:
      | email            | signature    |    newSignature    |
      | lily@email.com   | "I am happy" | "I have a bad day" |
