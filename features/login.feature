Feature: OrangeHRM logo

  @Regression
  Scenario: Logo display
    Given launch chrome browser
    When open the orange hrm page
    Then verify that logon is present on the page
    And close browser

  @Sanity
  Scenario: Verify login funcationality with valid credentails
    Given launch chrome browser
    When open the orange hrm page
    And Enter username "Admin" and password "admin123"
    And click on login button
    Then User must successfully login to Dashboard

  @Sanity
  Scenario Outline: Verify login funcationality with multiple  credentails
    Given launch chrome browser
    When open the orange hrm page
    And Enter username "<username>" and password "<password>"
    And click on login button
    Then User must successfully login to Dashboard

  Examples:

    | username      | | password |
    | Admin  |      |  admin123  |
    | admin  |    |  admin123$%^ |
    | Admin^^  |    |  admin123# |
    | Admin&* |    |  admin123$%  |

