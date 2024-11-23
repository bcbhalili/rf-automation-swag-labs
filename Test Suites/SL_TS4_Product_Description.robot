*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         November 16, 2024
...    Test Scenario:        Check Product Description interface (UI/UX) and its functionalities.
...    Test Scenario ID:     SL_TS4
Resource          ../Resources/SL_R1_Login.resource
Suite Setup       Run Keywords    SSU_Open_Automation_Browser    ${Setup.URL}                    ${Setup.BROWSER}
...               AND             SL_R1K001_Login                ${UsernameTestValues.CORRECT}   ${PasswordTestValues.CORRECT}
Suite Teardown    Close Browser

*** Test Cases ***
SL_TS4TC001
    [Documentation]
    ...    Test Case ID:             SL_TS4TC001
    ...    Test Case Descriptions:   Verify if Product Description page shows up upon click of an item name.
    ...                              Verify if item name is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Product Description page shows up.
    ...        5. Verify if item name is visible.
    ...    Post-Requisites:
    ...        - Product Description page shows up upon click of an item name.
    ...        - Item name in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    H001_Click_Element_with_Sync               ${InventoryProduct.LINK}
    Wait Until Element Is Visible              ${ProductDescriptionItem.NAME}
    SS02_Capture_Full_Page_Showing_Element     ${ProductHeader.DIV}    
    ...                                        Description - Landing Page
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.NAME}   
    ...                                        Description - Name Section
SL_TS4TC002
    [Documentation]
    ...    Test Case ID:             SL_TS4TC002
    ...    Test Case Description:    Verify if item description is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if item description is visible.
    ...    Post-Requisites:
    ...        - Item description in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                  ${ProductDescriptionItem.DESCRIPTION}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.DESCRIPTION}   
    ...                                        Description - Description Section
SL_TS4TC003
    [Documentation]
    ...    Test Case ID:             SL_TS4TC003
    ...    Test Case Description:    Verify if item price is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if item price is visible.
    ...    Post-Requisites:
    ...        - Item price in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                  ${ProductDescriptionItem.PRICE}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.PRICE}   
    ...                                        Description - Price Section
SL_TS4TC004
    [Documentation]
    ...    Test Case ID:             SL_TS4TC004
    ...    Test Case Description:    Verify if item image is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if item image is visible.
    ...    Post-Requisites:
    ...        - Item image in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                  ${ProductDescriptionItem.IMAGE}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.IMAGE}   
    ...                                        Description - Image Section
SL_TS4TC005
    [Documentation]
    ...    Test Case ID:             SL_TS4TC005
    ...    Test Case Description:    Verify if Add/Remove button is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Add/Remove button is visible.
    ...    Post-Requisites:
    ...        - Add/Remove button in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                  ${ProductDescriptionItem.BUTTON}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.BUTTON}   
    ...                                        Description - Add Remove Button
SL_TS4TC006
    [Documentation]
    ...    Test Case ID:             SL_TS4TC006
    ...    Test Case Description:    Verify if Add/Remove button is clickable.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Add/Remove button is clickable.
    ...    Post-Requisites:
    ...        - Add/Remove button in Product Description page is clickable.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Enabled                  ${ProductDescriptionItem.BUTTON}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.BUTTON}   
    ...                                        Description - Add Remove Button
SL_TS4TC007
    [Documentation]
    ...    Test Case ID:             SL_TS4TC007
    ...    Test Case Description:    Verify if button text changed from "Add to cart" to "Remove" upon click.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if button text changed from "Add to cart" to "Remove" upon click.
    ...    Post-Requisites:
    ...        - Button text changed from "Add to cart" to "Remove" upon click.
    [Tags]     Product Description    Positive Testing    Regression
    Comment    Check initial text of the button; Should be "Add to cart".
    Element Text Should Be                     ${ProductDescriptionItem.BUTTON}    
    ...                                        ${ProductDescriptionElementTexts.ADD_TO_CART}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.BUTTON}   
    ...                                        Description - Add Button Pre-click 
    Comment    Transition Statement: Button text should change to "Remove" upon click.
    H001_Click_Element_with_Sync               ${ProductDescriptionItem.BUTTON} 
    Comment    Check changed text of the button; Should be "Remove".
    Element Text Should Be                     ${ProductDescriptionItem.BUTTON}    
    ...                                        ${ProductDescriptionElementTexts.REMOVE}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.BUTTON}   
    ...                                        Description - Add Button Post-click 
SL_TS4TC008
    [Documentation]
    ...    Test Case ID:             SL_TS4TC008
    ...    Test Case Description:    Verify if button text changed from "Remove" to "Add to cart" upon click.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if button text changed from "Remove" to "Add to cart" upon click.
    ...    Post-Requisites:
    ...        - Button text changed from "Remove" to "Add to cart" upon click.
    [Tags]     Product Description    Positive Testing    Regression
    Comment    Check initial text of the button; Should be "Remove".
    Element Text Should Be                     ${ProductDescriptionItem.BUTTON}    
    ...                                        ${ProductDescriptionElementTexts.REMOVE}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.BUTTON}   
    ...                                        Description - Remove Button Pre-click 
    Comment    Transition Statement: Button text should change to "Remove" upon click.
    H001_Click_Element_with_Sync               ${ProductDescriptionItem.BUTTON} 
    Comment    Check changed text of the button; Should be "Add to cart".
    Element Text Should Be                     ${ProductDescriptionItem.BUTTON}    
    ...                                        ${ProductDescriptionElementTexts.ADD_TO_CART}
    SS03_Capture_WebElement_and_Full_Page      ${ProductDescriptionItem.BUTTON}   
    ...                                        Description - Remove Button Post-click 
SL_TS4TC009
    [Documentation]
    ...    Test Case ID:             SL_TS4TC009
    ...    Test Case Description:    Verify if Product Description header is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Product Description header is visible.
    ...    Post-Requisite:
    ...        - Product Description Header should be visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductHeader.DIV}
    SS03_Capture_WebElement_and_Full_Page     ${ProductHeader.DIV}  
    ...                                       Description - Header
SL_TS4TC010
    [Documentation]
    ...    Test Case ID:             SL_TS4TC010
    ...    Test Case Description:    Verify if Product Description header text is "Swag Labs".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Product Description header text is "Swag Labs".
    ...    Post-Requisite:
    ...        - Product Description Header text should be "Swag Labs".
    [Tags]     Product Description    Positive Testing    Regression
    H005_Check_Element_Text_with_Sync         ${ProductHeader.DIV}   
    ...                                       ${ProductDescriptionElementTexts.HEADER}
    SS03_Capture_WebElement_and_Full_Page     ${ProductHeader.DIV}   
    ...                                       Description - Header Text
SL_TS4TC011
    [Documentation]
    ...    Test Case ID:             SL_TS4TC011
    ...    Test Case Description:    Verify if Menu icon in Product Description page is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Menu icon in Product Description page is visible.
    ...    Post-Requisite:
    ...        - Menu icon in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionMenu.BUTTON}    
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionMenu.BUTTON}  
    ...                                       Description - Menu Icon Visible
SL_TS4TC012
    [Documentation]
    ...    Test Case ID:             SL_TS4TC012
    ...    Test Case Description:    Verify if Menu icon in Product Description page is enabled.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Menu icon in Product Description page is enabled.
    ...    Post-Requisite:
    ...        - Menu icon in Product Description page is enabled.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Enabled                 ${ProductDescriptionMenu.BUTTON}    
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionMenu.BUTTON}  
    ...                                       Description - Menu Icon Enabled
SL_TS4TC013
    [Documentation]
    ...    Test Case ID:             SL_TS4TC013
    ...    Test Case Description:    Verify if Menu icon in Product Description page reveals sidebar options.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Click Menu icon.
    ...        5. Verify if Menu icon in Product Description page reveals sidebar options:
    ...                - All Items
    ...                - About
    ...                - Logout
    ...                - Reset App State
    ...    Post-Requisite:
    ...        - Menu icon in Product Description page reveals sidebar options.
    [Tags]     Product Description    Positive Testing    Regression
    H001_Click_Element_with_Sync              ${ProductDescriptionMenu.BUTTON}   
    Wait Until Element Is Visible             ${ProductDescriptionMenuOptions.DIV}        
    Element Should Be Visible                 ${ProductDescriptionMenuOptions.ALL_ITEMS} 
    Element Should Be Visible                 ${ProductDescriptionMenuOptions.ABOUT} 
    Element Should Be Visible                 ${ProductDescriptionMenuOptions.LOGOUT}
    Element Should Be Visible                 ${ProductDescriptionMenuOptions.RESET_APP_STATE}  
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionMenuOptions.DIV}  
    ...                                       Description - Menu Sidebar Options
SL_TS4TC014
    [Documentation]
    ...    Test Case ID:             SL_TS4TC014
    ...    Test Case Description:    Verify if X icon of Menu sidebar in Product Description page is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Click Menu icon.
    ...        5. Verify if X icon of Menu sidebar in Product Description page is visible.
    ...    Post-Requisite:
    ...        - X icon of Menu sidebar in Product Description page is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionMenuOptions.CLOSE} 
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionMenuOptions.CLOSE}  
    ...                                       Description - X Icon Visible
SL_TS4TC015
    [Documentation]
    ...    Test Case ID:             SL_TS4TC015
    ...    Test Case Description:    Verify if X icon of Menu sidebar in Product Description page is enabled.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Click Menu icon.
    ...        5. Verify if X icon of Menu sidebar in Product Description page is enabled.
    ...    Post-Requisite:
    ...        - X icon of Menu sidebar in Product Description page is enabled.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Enabled                 ${ProductDescriptionMenuOptions.CLOSE} 
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionMenuOptions.CLOSE}  
    ...                                       Description - X Icon Enabled
SL_TS4TC016
    [Documentation]
    ...    Test Case ID:             SL_TS4TC016
    ...    Test Case Description:    Verify if X icon of Menu sidebar in Product Description page hides sidebar options.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Click Menu icon.
    ...        5. Verify if X icon of Menu sidebar in Product Description page hides sidebar options.
    ...    Post-Requisite:
    ...        - X icon of Menu sidebar in Product Description page is enabled.
    [Tags]     Product Description    Positive Testing    Regression
    H001_Click_Element_with_Sync              ${ProductDescriptionMenuOptions.CLOSE} 
    Wait Until Element Is Not Visible         ${ProductDescriptionMenuOptions.DIV}   
    SS02_Capture_Full_Page_Showing_Element    ${ProductHeader.DIV}
    ...                                       Description - Menu Sidebar Hidden
SL_TS4TC017
    [Documentation]
    ...    Test Case ID:             SL_TS4TC017
    ...    Test Case Description:    Verify if Back to Products button is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Back to Products button is visible.
    ...    Post-Requisite:
    ...        - Back to Products button is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionLink.BACK}    
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionLink.BACK}  
    ...                                       Description - Back to Products Visible
SL_TS4TC018
    [Documentation]
    ...    Test Case ID:             SL_TS4TC018
    ...    Test Case Description:    Verify if Back to Products button is enabled.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if Back to Products button is enabled.
    ...    Post-Requisite:
    ...        - Back to Products button is enabled.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Enabled                 ${ProductDescriptionLink.BACK}    
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionLink.BACK}  
    ...                                       Description - Back to Products Enabled
SL_TS4TC019
    [Documentation]
    ...    Test Case ID:             SL_TS4TC019
    ...    Test Case Description:    Verify if the user proceeds back to inventory page upon click of Back to Products button.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if the user proceeds back to inventory page upon click of Back to Products button.
    ...    Post-Requisite:
    ...        - The user proceeds back to inventory page upon click of Back to Products button.
    [Tags]     Product Description    Positive Testing    Regression
    SS02_Capture_Full_Page_Showing_Element    ${ProductDescriptionLink.BACK}
    ...                                       Description - Back to Products Pre-click
    H001_Click_Element_with_Sync              ${ProductDescriptionLink.BACK}
    Wait Until Location Contains              ${Sublinks.INVENTORY}   
    SS02_Capture_Full_Page_Showing_Element    ${InventorySubHeader.DIV}
    ...                                       Inventory - Back to Products Post-click
SL_TS4TC020
    [Documentation]
    ...    Test Case ID:             SL_TS4TC020
    ...    Test Case Description:    Verify if the Cart link is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Verify if the Cart link is visible.
    ...    Post-Requisite:
    ...        - Verify if the Cart link is visible.
    [Tags]     Product Description    Positive Testing    Regression
    H001_Click_Element_with_Sync              ${InventoryProduct.LINK}
    Wait Until Element Is Visible             ${ProductDescriptionItem.NAME}  
    Element Should Be Visible                 ${ProductDescriptionLink.SHOPPING_CART}    
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionLink.SHOPPING_CART}
    ...                                       Inventory - Cart Link
SL_TS4TC021
    [Documentation]
    ...    Test Case ID:             SL_TS4TC021
    ...    Test Case Description:    Verify if the user proceeds to cart page upon click of Cart link.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if the user proceeds to cart page upon click of Cart link.
    ...    Post-Requisite:
    ...        - The user proceeds cart to page upon click of Cart link.
    [Tags]     Product Description    Positive Testing    Regression
    H001_Click_Element_with_Sync              ${ProductDescriptionLink.SHOPPING_CART}
    Wait Until Location Contains              ${Sublinks.CART}   
    SS03_Capture_WebElement_and_Full_Page     ${CartSubHeader.DIV}
    ...                                       Cart - Landing Page
SL_TS4TC022
    [Documentation]
    ...    Test Case ID:             SL_TS4TC022
    ...    Test Case Description:    Verify if footer is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if footer is visible.
    ...    Post-Requisite:
    ...        - Footer is visible.
    [Tags]     Product Description    Positive Testing    Regression
    H001_Click_Element_with_Sync              ${CartLinks.CONTINUE_SHOPPING}
    Wait Until Location Contains              ${Sublinks.INVENTORY} 
    H001_Click_Element_with_Sync              ${InventoryProduct.LINK}
    Wait Until Element Is Visible             ${ProductDescriptionFooter.DIV}
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionFooter.DIV}
    ...                                       Description - Footer
SL_TS4TC023
    [Documentation]
    ...    Test Case ID:             SL_TS4TC023
    ...    Test Case Description:    Verify if Twitter/X logo in footer is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if Twitter/X logo in footer is visible.
    ...    Post-Requisite:
    ...        - Twitter/X logo in footer is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionFooter.TWITTER_LINK}
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionFooter.TWITTER_LINK}
    ...                                       Description - Twitter Link
SL_TS4TC024
    [Documentation]
    ...    Test Case ID:             SL_TS4TC024
    ...    Test Case Description:    Verify if LinkedIn logo in footer is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if LinkedIn logo in footer is visible.
    ...    Post-Requisite:
    ...        - LinkedIn logo in footer is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionFooter.LINKEDIN_LINK}
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionFooter.LINKEDIN_LINK}
    ...                                       Description - LinkedIn Link
SL_TS4TC025
    [Documentation]
    ...    Test Case ID:             SL_TS4TC025
    ...    Test Case Description:    Verify if Facebook logo in footer is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if Facebook logo in footer is visible.
    ...    Post-Requisite:
    ...        - Facebook logo in footer is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionFooter.FB_LINK}
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionFooter.FB_LINK}
    ...                                       Description - Facebook Link
SL_TS4TC026
    [Documentation]
    ...    Test Case ID:             SL_TS4TC026
    ...    Test Case Description:    Verify if the footer notes is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if the footer notes is visible.
    ...    Post-Requisite:
    ...        - Footer notes is visible.
    [Tags]     Product Description    Positive Testing    Regression
    Element Should Be Visible                 ${ProductDescriptionFooter.NOTES}
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionFooter.NOTES}
    ...                                       Description - Footer Notes
SL_TS4TC027
    [Documentation]
    ...    Test Case ID:             SL_TS4TC027
    ...    Test Case Description:    Verify if the footer text is "© 2024 Sauce Labs. All Rights Reserved. Terms of Service | Privacy Policy".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Click an item name.
    ...        4. Page should be product description.
    ...        5. Verify if the footer text is "© 2024 Sauce Labs. All Rights Reserved. Terms of Service | Privacy Policy".
    ...    Post-Requisite:
    ...        - Footer text is "© 2024 Sauce Labs. All Rights Reserved. Terms of Service | Privacy Policy".
    [Tags]     Product Description    Positive Testing    Regression
    Element Text Should Be                    ${ProductDescriptionFooter.NOTES}   
    ...                                       ${CommonFieldValues.FOOTER_TEXT}
    SS03_Capture_WebElement_and_Full_Page     ${ProductDescriptionFooter.NOTES}
    ...                                       Description - Footer Notes