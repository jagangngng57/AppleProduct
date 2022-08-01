@login
Feature: Verify the login page

   @clearTripExecise
  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given User able to "http://dcsap01.walgreens.com:8080/MYWCARDWeb/servlet/walgreens.wcard.proxy.WCardProxy" of
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User should enter a valid card details as '<cardNumber>'
    And User click on search button
    And User should able to see Walgreens Card Balance Summary screen
    And User should be able see Card details

    Examples: 
      | userName | password | cardNumber |
      |abc       |asdfsdfsdf|445454545454|

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User should enter a valid Cardholder information as '<last>' and '<ZIP>>' and '<birthDate>'
    And User click on search button
    And User should able to see Walgreens Card Balance Summary screen
    And User should be able see Card details

    Examples: 
      | userName | password | last | ZIP | birthDate |

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User should enter a valid card details as '<cardNumber>'
    And User click on search button
    And User should able to see Walgreens Card Balance Summary screen
    And User should be able see Card details
    And User can enter the Lawson Account Number as '<LANumber>' and new balance as '<Balance'>
    And User able click on Save Changes button
    And User should be able to see save changes message

    Examples: 
      | userName | password | cardNumber | LANumber | Balance |

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User should enter a valid card details as '<cardNumber>'
    And User click on search button
    And User should able to see Walgreens Card Balance Summary screen
    And User should be able see Card details
    And User clicks on Edit Cardholder Information link
    And User should be able to edit the cardHolder information section
    And User able click on Save Changes button
    And User should be able to see save cardHolder infromation

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User should enter a valid card details as '<cardNumber>'
    And User click on search button
    And User should able to see Walgreens Card Balance Summary screen
    And User should be able see Card details
    And User clicks on Deactivate Account link

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User clicks on Balance Tranfer page
    And User enters To card '<card>' and From card '<cardNumber>'
    And User able to click on Transfer Balance button
    And Card balance should be transferred

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User Click on Report Lost or Stolen Card link
    And User able to enter '<lastName>' and '<zip>' and '<birthDate>'
    And User click on search button
    And User able to see error message

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to click Card Design link
    And User able to enter '<cardDesignName>' on card design screen
    And User able to click on Upload and Save button
    And User should be see new Card Design created

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to click on Carier link
    And User able to enter carier details as '<templateName>'
    And User able to clicks on Upload and Save button
    And User able to create new Carier

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on Client Information link under Manage
    And User able to enter client Information
    And User able to click on Save Changes button
    And User able to create new client

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on LOGOS link under Manage
    And User able to enter logos details
    And User able to click on Upload and Save button
    And User able to create new LOGO

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on Manufacturer link under Manage
    And User able to enter Manufacturer details
    And User able to click on Save Changes button
    And User able to create new manufacturer

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to click on Click on Order Cards link under Bulk Activities
    And User able to click on Click on Create Order button
    And User able to enter order details
    And User able to click on Save Changes button

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on Verification link under Orders
    And User able to enter details
    And User able to click on Search button
    And User should be see Order details

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then Click on Track shipments link under Orders
    And User able to enter details
    And User able to click on Search button
    And User should be see Order details

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on Activate Individual Cards link
    And User able to enter the details
    And User able to Click on Activate button
    And User should see Activated card

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on System Outage page link
    And User able to enter password
    And User able to click on Submit button
    And User able to select the Details
    And User able to click on Submit button

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on Add Receipt to Card link
    And User able to click on Search button
    And User able to see error meessage
    And User able to enter receipt number
    And User able to click on Search button
    And User Should see file contain RFN info
    And User able to click on Add Receipt Card link
    And User should see new file displayed

  Scenario Outline: User able to see Walgreens Card Balance Summary screen is displayed and Card details should be logged.
    Given Navigate to login page
    When User logged with super user as '<userName>' and '<password>'
    And User should be navigated to Walgreens Card Account Overview page
    Then User able to Click on Activate Cards link
    And User able to enter startCard and endCard details
    And User able to click on Activate Cards
