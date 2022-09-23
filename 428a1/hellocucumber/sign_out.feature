Feature: sign out

  As a user
  I would like to sign out my account
  So that I can prevent others from using my account

  # Normal Flow
  Scenario: sign out the account by clicking the "sign out" button
    Given I have signed in successfully
    When I click the "sign out" button
    Then the system can not access my account anymore

  # Alternative Flow
  Scenario: sign out by closing the web page
    Given I have signed in successfully
    When I close the web page
    Then the system can not access my account anymore

  # Alternative Flow
  Scenario: sign out since no interaction with the web page over half an hour
    Given I have signed in successfully
    When I have no interaction with the web page over half an hour
    Then the system can not access my account anymore