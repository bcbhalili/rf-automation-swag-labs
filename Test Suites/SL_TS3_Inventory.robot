*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         October 26, 2024
...    Test Scenario:        Check Inventory interface (UI/UX) and its functionalities.
...    Test Scenario ID:     SL_TS3
Resource          ../Resources/SL_R1_Login.resource
Suite Setup       Run Keywords    SSU_Open_Automation_Browser    ${Setup.URL}                    ${Setup.BROWSER}
...               AND             SL_R1K001_Login                ${UsernameTestValues.CORRECT}   ${PasswordTestValues.CORRECT}
Suite Teardown    Close Browser

*** Test Cases ***
SL_TS3TC001
    [Documentation]
    ...    Test Case ID:             SL_TS3TC001
    ...    Test Case Description:    Verify if Inventory header is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory header is visible.
    ...    Post-Requisite:
    ...        - Inventory Header should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Visible                 ${InventoryHeader.DIV}
    SS03_Capture_WebElement_and_Full_Page     ${InventoryHeader.DIV}    
    ...                                       Inventory - Header
SL_TS3TC002
    [Documentation]
    ...    Test Case ID:             SL_TS3TC002
    ...    Test Case Description:    Verify if Inventory header text is "Swag Labs".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory header text is "Swag Labs".
    ...    Post-Requisite:
    ...        - Inventory Header text should be "Swag Labs".
    [Tags]     Inventory    Positive Testing    Regression
    H005_Check_Element_Text_with_Sync         ${InventoryHeader.DIV}    
    ...                                       ${InventoryElementTexts.HEADER}
    SS03_Capture_WebElement_and_Full_Page     ${InventoryHeader.DIV}    
    ...                                       Inventory - Header
SL_TS3TC003
    [Documentation]
    ...    Test Case ID:             SL_TS3TC003
    ...    Test Case Description:    Verify if Shopping Cart icon is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Shopping Cart icon is visible.
    ...    Post-Requisite:
    ...        - Shopping Cart should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Visible                 ${InventoryCart.LINK}    
    SS03_Capture_WebElement_and_Full_Page     ${InventoryHeader.DIV}    
    ...                                       Inventory - Header
SL_TS3TC004
    [Documentation]
    ...    Test Case ID:             SL_TS3TC004
    ...    Test Case Description:    Verify if Inventory sub-header is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory sub-header is visible.
    ...    Post-Requisite:
    ...        - Inventory sub-header should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Visible                 ${InventorySubHeader.DIV}    
    SS03_Capture_WebElement_and_Full_Page     ${InventorySubHeader.DIV}      
    ...                                       Inventory - Sub-Header
SL_TS3TC005
    [Documentation]
    ...    Test Case ID:             SL_TS3TC005
    ...    Test Case Description:    Verify if Inventory sub-header text is "Products".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory sub-header text is "Products".
    ...    Post-Requisite:
    ...        - Inventory sub-header text should be "Products".
    [Tags]     Inventory    Positive Testing    Regression
    H005_Check_Element_Text_with_Sync         ${InventorySubHeader.DIV}     
    ...                                       ${InventoryElementTexts.SUBHEADER}  
    SS03_Capture_WebElement_and_Full_Page     ${InventorySubHeader.DIV}      
    ...                                       Inventory - Sub-Header
SL_TS3TC006
    [Documentation]
    ...    Test Case ID:             SL_TS3TC006
    ...    Test Case Description:    Verify if Filter Dropdown is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Filter Dropdown is visible.
    ...    Post-Requisite:
    ...        - Filter Dropdown should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Enabled                 ${InventoryFilter.DROPDOWN} 
    SS03_Capture_WebElement_and_Full_Page     ${InventoryFilter.DROPDOWN}      
    ...                                       Inventory - Filter Dropdown
SL_TS3TC007
    [Documentation]
    ...    Test Case ID:             SL_TS3TC007
    ...    Test Case Description:    Verify if Filter Dropdown's default value is "Name (A to Z)".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Filter Dropdown's default value is "Name (A to Z)".
    ...    Post-Requisite:
    ...        - Filter Dropdown default value should be "Name (A to Z)".
    [Tags]     Inventory    Positive Testing    Regression
    H006_Check_Selected_Label_in_Dropdown     ${InventoryFilter.DROPDOWN}     Name (A to Z)
    SS03_Capture_WebElement_and_Full_Page     ${InventorySubHeader.DIV}      
    ...                                       Inventory - Sub-Header
SL_TS3TC008
    [Documentation]
    ...    Test Case ID:             SL_TS3TC008
    ...    Test Case Description:    Verify if Filter Dropdown options has the following:
    ...                                  - Name (A to Z)
    ...                                  - Name (Z to A)
    ...                                  - Price (low to high)
    ...                                  - Price (high to low)
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Filter Dropdown options has the following:
    ...                                  - Name (A to Z)
    ...                                  - Name (Z to A)
    ...                                  - Price (low to high)
    ...                                  - Price (high to low)
    ...    Post-Requisite:
    ...        - Filter Dropdown options must have the following:
    ...                                  - Name (A to Z)
    ...                                  - Name (Z to A)
    ...                                  - Price (low to high)
    ...                                  - Price (high to low)
    [Tags]     Inventory    Positive Testing    Regression
    @{filter_options}=           Get List Items       ${InventoryFilter.DROPDOWN}
    FOR    ${filter_option}    IN    @{filter_options}
        Log                          ${filter_option}
        List Should Contain Value    ${filter_options}    ${filter_option}
    END
    SS03_Capture_WebElement_and_Full_Page     ${InventoryFilter.DROPDOWN}    
    ...                                       Inventory - Filter Options