Feature: Tax Calculation

  Scenario Outline: Calculate tax for a user depending on their age
    Given a user with age "<age>"
    And a salary of "<salary>"
    When the user calculates the tax
    Then the take-home amount is "<take_home_amount>"
    Then the tax is "<tax>"

    Examples:
      | age | salary | take_home_amount | tax      |
      | 22  | 20000  | 17498            | 2324.58  |
      | 65  | 20000  | 18248            | 1,574.58 |


  Scenario Outline: Calculate tax for a user contributing to a pension, provident fund or RAF
    Given a user with age "<age>"
    And a salary of "<salary>"
    When the user calculates the tax
    Then the take-home amount is "<take_home_amount>"
    Then the tax is "<tax>"

    Examples:
      | age | salary | take_home_amount | tax    |amount_contributed|
      | 22  | 20000  | 15131           | 1.691.25 |3000              |