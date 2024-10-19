*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         October 19, 2024
...    Test Scenario:        Check the outcome based on login and password combinations.
...    Test Scenario ID:     SL_TS2
Resource          ../Resources/SL_R1_Login.resource
Suite Setup       SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Suite Teardown    Close Browser
Test Teardown     Reload Page

*** Test Cases ***
SL_TS2TC001
    [Documentation]
    ...    Test Case ID:             SL_TS2TC001
    ...    Test Case Description:    Verify error message if username is correct and password is invalid.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is correct and password is invalid.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username and password do not match any user in this service" should show up if username is correct and password is invalid.
    [Tags]    Login    Negative Testing
    SL_R1K001_Login                           ${UsernameTestValues.CORRECT}    ${PasswordTestValues.INVALID}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.NO_MATCH}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC002
    [Documentation]
    ...    Test Case ID:             SL_TS2TC002
    ...    Test Case Description:    Verify error message if username is correct and password is blank.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is correct and password is blank.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Password is required" should show up if username is correct and password is blank.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.CORRECT}    ${PasswordTestValues.BLANK}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.PASSWORD_REQUIRED}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC003
    [Documentation]
    ...    Test Case ID:             SL_TS2TC003
    ...    Test Case Description:    Verify error message if username is invalid and password is correct.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is invalid and password is correct.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username and password do not match any user in this service" should show up if username is invalid and password is correct.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.INVALID}    ${PasswordTestValues.CORRECT}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.NO_MATCH}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC004
    [Documentation]
    ...    Test Case ID:             SL_TS2TC004
    ...    Test Case Description:    Verify error message if username is invalid and password is invalid.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is invalid and password is invalid.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username and password do not match any user in this service" should show up if username is invalid and password is invalid.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.INVALID}    ${PasswordTestValues.INVALID}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.NO_MATCH}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC005
    [Documentation]
    ...    Test Case ID:             SL_TS2TC005
    ...    Test Case Description:    Verify error message if username is invalid and password is blank.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is invalid and password is blank.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username and password do not match any user in this service" should show up if username is invalid and password is blank.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.INVALID}    ${PasswordTestValues.BLANK}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.PASSWORD_REQUIRED}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC006
    [Documentation]
    ...    Test Case ID:             SL_TS2TC006
    ...    Test Case Description:    Verify error message if username is blank and password is correct.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is blank and password is correct.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username is required" should show up if username is blank and password is correct.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.BLANK}      ${PasswordTestValues.CORRECT}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.USERNAME_REQUIRED}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC007
    [Documentation]
    ...    Test Case ID:             SL_TS2TC007
    ...    Test Case Description:    Verify error message if username is blank and password is invalid.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is blank and password is invalid.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username is required" should show up if username is blank and password is invalid.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.BLANK}      ${PasswordTestValues.INVALID}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.USERNAME_REQUIRED}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC008
    [Documentation]
    ...    Test Case ID:             SL_TS2TC008
    ...    Test Case Description:    Verify error message if username is blank and password is blank.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is blank and password is blank.
    ...    Post-Requisite:
    ...        - Error message "Epic sadface: Username is required" should show up if username is blank and password is blank.
    [Tags]    Login    Negative Testing    
    SL_R1K001_Login                           ${UsernameTestValues.BLANK}      ${PasswordTestValues.BLANK}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}             ${ErrorMessages.USERNAME_REQUIRED}
    SS01_Capture_Element                      ${Login_Forms.ERROR}    
    ...                                       Login - Error
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.ERROR}    
    ...                                       Login - Error
SL_TS2TC009
    [Documentation]
    ...    Test Case ID:             SL_TS2TC009
    ...    Test Case Description:    Verify no error message if username is correct and password is correct and should proceed with the Inventory page.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify no error message if username is correct and password is correct and should proceed with the Inventory page.
    ...    Post-Requisite:
    ...        - No error message if both username and password are correct, should proceed with the Inventory page.
    [Tags]    Login    Positive Testing    
    SL_R1K001_Login                           ${UsernameTestValues.CORRECT}      ${PasswordTestValues.CORRECT}
    Wait Until Element Is Visible             ${InventoryHeader.DIV}
    Location Should Contain                   ${InventoryURL.SUB}

    SS02_Capture_Full_Page_Showing_Element    ${InventoryHeader.DIV}    
    ...                                       Inventory - Landing Page