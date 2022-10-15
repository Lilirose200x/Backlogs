Feature: Register

  As a user
  I would like to register for an account
  So that I can save my rating and preference settings

    # Normal flow
  Scenario Outline: register with an email
    Given my email is <email>
    When I input email <email> and password <password>
    Then I register successfully
    And I receive a confirmation message

    Examples:
      | email          | password  |
      | lily@email.com | password1 |

    # Error flow
  Scenario: register with an email that has already been used
    Given an existing account registered with email "lily@email.com"
    When I try to register with email "lily@email.com"
    Then an error message is prompted "This email has been used"

    # Error flow
  Scenario: register with an invalid email
    Given there is no email "lily@email.com"
    When I try to register with email "lily@email.com"
    Then an error message is prompted "This email is invalid"
