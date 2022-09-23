Feature: Sign In

  As a user
  I would like to sign in to my account
  So that I can use my account

      # Normal Flow
  Scenario Outline: sign in to the account
    Given I have an account registered with email <email> and password <password>
    When I enter both email <email> and password <password> correctly
    Then I sign in successfully

    Examples:
      | email            | password  |
      | lily@email.com   | password1 |

    # Error Flow
  Scenario Outline: sign in with the wrong email but correct password
    Given I have an account registered with email <email> and password <password>
    When I enter the wrong email <wrongEmail> but correct password <password>
    Then an error message is prompted "Wrong Email"
    Examples:
      | email            |  wrongEmail    |password  |
      | lily@email.com   | lili@email.com |password1 |

    # Error Flow
  Scenario Outline: sign in with the wrong password but correct email
    Given I have an account registered with email <email> and password <password>
    When I enter the wrong password <wrongPassword> but correct email <email>
    Then an error message is prompted "Wrong Password"
    Examples:
      | email            | password  | wrongPassword    |
      | lily@email.com   | password1 | password2        |