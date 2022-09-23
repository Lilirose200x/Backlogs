Feature: security setting
  As a user
  I would like to change my password periodically
  So that I can protect my account from being stolen

      # Normal Flow
  Scenario Outline: change the password

    Given the user with an email <email> and password <password>
    When the user changes the old password to <newPassword>
    Then the user's password is updated successfully

    Examples:
      | email            | password  | newPassword  |
      | lily@email.com   | password1 | newPassword1 |

    # Error Flow
  Scenario Outline: replace the old password with the same password

    Given the user with an email <email> and password <password>
    When the user tries to change the old password to <newPassword>
    Then an error message is prompted "the new password can not be the same as the old one"

    Examples:
      | email            | password  | newPassword |
      | lily@email.com   | password1 | password1   |

    # Error Flow
  Scenario Outline: the new password is too short which can not be accepted
    Given the user with an email <email> and password <password>
    When the user tries to change the old password to a short <newPassword>
    Then an error message is prompted "the new password is not safe enough"

    Examples:
      | email            | password  | newPassword |
      | lily@email.com   | password1 | 1           |
