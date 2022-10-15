Feature: Language Setting

  As a user
  I would like to customize the language of the application
  So that I can use the application in a language I am comfortable with

    # Normal Flow
  Scenario: change a different language on the system language list
    Given the user select a language
    When the language is different than the current language setting
    Then the new language setting applied to the system

    # Alternate Flow
  Scenario: select the same language with the current language
    Given the user select a language
    When the language is identical with the current language setting
    Then the system remain at the current language setting

     # Error Flow
  Scenario: setting apply failure due to network failure
    Given the user select a language
    When the selection is being made but the system failed to apply due to network reason
    Then message alert the user setting failed, please try again