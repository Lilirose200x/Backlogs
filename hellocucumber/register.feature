Feature: Register
  As a user
  I would like to register my account
  So that I can save my records and preference settings

    # Normal flow
  Scenario Outline: register with an email
    Given the email of the user is email <email>
    When the user inputs email <email> and password <password>
    Then the user registers successfully
    And the user should receive a confirmation message

    Examples:
      | email          | password  |
      | lily@email.com | password1 |

    # Error flow
  Scenario: register with an email that has already been used
    Given the user with email "lily@email.com"
    And an existing account registered with email "lily@email.com"
    When the user tries to register with email "lily@email.com"
    Then an error message is prompted "This email has been used"

    # Error flow
  Scenario: register with an invalid email
    Given there is no email "lily@email.com"
    When the user tries to register with email "lily@email.com"
    Then an error message is prompted "This email is not valid"
