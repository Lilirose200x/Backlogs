Feature: security setting
  As a user
  I would like to change my password periodically
  So that I can protect my account from being stolen

      # Normal Flow
  Scenario Outline: change the password

    Given I have an account registered with an email <email> and password <password>
    When I change the old password to <newPassword>
    Then my password is updated successfully

    Examples:
      | email            | password  | newPassword  |
      | lily@email.com   | password1 | newPassword1 |

    # Error Flow
  Scenario Outline: replace the old password with the same password

    Given I have an account registered with an email <email> and password <password>
    When I try to change the old password to <newPassword>
    Then an error message is prompted "The new password can not be the same as the old one"

    Examples:
      | email            | password  | newPassword |
      | lily@email.com   | password1 | password1   |

    # Error Flow
  Scenario Outline: the new password is too short which can not be accepted
    Given I have an account registered with an email <email> and password <password>
    When I try to change the old password to a short <newPassword>
    Then an error message is prompted "The new password is not safe"

    Examples:
      | email            | password  | newPassword |
      | lily@email.com   | password1 | 1           |
