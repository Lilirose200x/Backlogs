Feature: sign out

  As a user
  I would like to sign out my account
  So that I can prevent others from using my account

  # Normal Flow
  Scenario: sign out the account by clicking the "sign out" button
    Given user has signed in successfully
    When the user clicks the "sign out" button
    Then the system can not access the account anymore

  # Alternative Flow
  Scenario: sign out by closing the web page
    Given user has signed in successfully
    When the user closes the web page
    Then the system can not access the account anymore

  # Alternative Flow
  Scenario: sign out since no interaction with the web page over half an hour
    Given user has signed in successfully
    When the user has no interaction with the web page over half an hour
    Then the system can not access the account anymore