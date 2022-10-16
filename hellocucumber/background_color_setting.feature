Feature: Background Color Setting

  As a user
  I would like to customize the background of my chess board
  So that I can play on my favorite color combination

    # Normal Flow
  Scenario: change a different color on the board color selection list
    Given the user select a color
    When the color is different than the current color setting
    Then the new color theme applied

    # Alternate Flow
  Scenario: select the same color with the current theme
    Given the user select a color
    When the color is identical with the current color setting
    Then the board remain at the current color setting
