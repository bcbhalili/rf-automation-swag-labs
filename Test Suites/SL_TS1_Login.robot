*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         October 5, 2024
...    Test Scenario:        Check login interface (UI/UX) and its functionalities.
...    Test Scenario ID:     SL_TS1
Resource          ../Resources/SL_R1_Login.resource
Suite Setup       SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
SL_TS1TC001
    [Documentation]
    ...    Test Case ID:             SL_TS1TC001
    ...    Test Case Description:    Verify if Login header is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Login header is visible.
    ...    Post-Requisite:
    ...        - Login Header should be visible.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Visible                 ${Login_Header.DIV}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Header.DIV}    
    ...                                       Login - Header
SL_TS1TC002
    [Documentation]
    ...    Test Case ID:             SL_TS1TC002
    ...    Test Case Description:    Verify if Login header text is "Swag Labs".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Login header text is "Swag Labs".
    ...    Post-Requisite:
    ...        - Login Header text should be "Swag Labs".
    [Tags]    Login    Positive Testing    Regression
    Element Text Should Be                    ${Login_Header.DIV}    
    ...                                       ${LoginElementTexts.HEADER}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Header.DIV}    
    ...                                       Login - Header
SL_TS1TC003
    [Documentation]
    ...    Test Case ID:             SL_TS1TC003
    ...    Test Case Description:    Verify if Username field is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username field is visible.
    ...    Post-Requisite:
    ...        - Username field is visible.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Visible                 ${Login_Forms.USERNAME_FIELD}  
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field
SL_TS1TC004
    [Documentation]
    ...    Test Case ID:             SL_TS1TC004
    ...    Test Case Description:    Verify if Username field is enabled.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username field is enabled.
    ...    Post-Requisite:
    ...        - Username field is enabled.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Enabled                 ${Login_Forms.USERNAME_FIELD}  
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field
SL_TS1TC005
    [Documentation]
    ...    Test Case ID:             SL_TS1TC005
    ...    Test Case Description:    Verify if Username field placeholder text is "Username".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username field placeholder text is "Username".
    ...    Post-Requisite:
    ...        - Username field placeholder text is "Username".
    [Tags]    Login    Positive Testing    Regression
    Element Attribute Value Should Be         ${Login_Forms.USERNAME_FIELD}      
    ...                                       placeholder    Username 
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field
SL_TS1TC006
    [Documentation]
    ...    Test Case ID:             SL_TS1TC006
    ...    Test Case Description:    Verify if Password field is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Password field is visible.
    ...    Post-Requisite:
    ...        - Password field is visible.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Visible                 ${Login_Forms.PASSWORD_FIELD}  
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.PASSWORD_FIELD}     
    ...                                       Login - Password Field
SL_TS1TC007
    [Documentation]
    ...    Test Case ID:             SL_TS1TC007
    ...    Test Case Description:    Verify if Password field is enabled.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Password field is enabled.
    ...    Post-Requisite:
    ...        - Password field is enabled.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Enabled                 ${Login_Forms.PASSWORD_FIELD}  
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.PASSWORD_FIELD}     
    ...                                       Login - Password Field
SL_TS1TC008
    [Documentation]
    ...    Test Case ID:             SL_TS1TC008
    ...    Test Case Description:    Verify if Password field placeholder text is "Password".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Password field placeholder text is "Password".
    ...    Post-Requisite:
    ...        - Password field placeholder text is "Password".
    [Tags]    Login    Positive Testing    Regression
    Element Attribute Value Should Be         ${Login_Forms.PASSWORD_FIELD}      
    ...                                       placeholder    Password 
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.PASSWORD_FIELD}     
    ...                                       Login - Password Field
SL_TS1TC009
    [Documentation]
    ...    Test Case ID:             SL_TS1TC009
    ...    Test Case Description:    Verify if Login button is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Login button is visible.
    ...    Post-Requisite:
    ...        - Login button should be visible.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Visible                 ${Login_Forms.LOGIN_BUTTON}    
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.LOGIN_BUTTON}     
    ...                                       Login - Button Visible
SL_TS1TC010
    [Documentation]
    ...    Test Case ID:             SL_TS1TC010
    ...    Test Case Description:    Verify if Login button is enabled.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Login button is enabled.
    ...    Post-Requisite:
    ...        - Login button should be enabled.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Enabled                 ${Login_Forms.LOGIN_BUTTON}    
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.LOGIN_BUTTON}     
    ...                                       Login - Button Enabled
SL_TS1TC011
    [Documentation]
    ...    Test Case ID:             SL_TS1TC011
    ...    Test Case Description:    Verify if Login button text is "Login".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Login button text is "Login".
    ...    Post-Requisite:
    ...        - Login button text should be "Login".
    [Tags]    Login    Positive Testing    Regression
    Element Attribute Value Should Be         ${Login_Forms.LOGIN_BUTTON}    
    ...                                       value    Login  
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.LOGIN_BUTTON}     
    ...                                       Login - Button Value
SL_TS1TC012
    [Documentation]
    ...    Test Case ID:             SL_TS1TC012
    ...    Test Case Description:    Verify if Usernames subheader is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Usernames subheader is visible.
    ...    Post-Requisite:
    ...        - Usernames subheader is visible.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Visible                 ${Login_Usernames.HEADER}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Usernames.HEADER}   
    ...                                       Login - Usernames Header Visible
SL_TS1TC013
    [Documentation]
    ...    Test Case ID:             SL_TS1TC013
    ...    Test Case Description:    Verify if Password subheader is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Password subheader is visible.
    ...    Post-Requisite:
    ...        - Password subheader is visible.
    [Tags]    Login    Positive Testing    Regression
    Element Should Be Visible                 ${Login_Passwords.HEADER}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Passwords.HEADER}   
    ...                                       Login - Password Header Visible
SL_TS1TC014
    [Documentation]
    ...    Test Case ID:             SL_TS1TC014
    ...    Test Case Description:    Verify if Username accepts alphabetic characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts alphabetic characters.
    ...    Post-Requisite:
    ...        - Username accepts alphabetic characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.ALPHABETIC}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Alphabetic Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.ALPHABETIC}    
    ...                                       Alphabetic Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC015
    [Documentation]
    ...    Test Case ID:             SL_TS1TC015
    ...    Test Case Description:    Verify if Username accepts numeric characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts numeric characters.
    ...    Post-Requisite:
    ...        - Username accepts numeric characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.NUMERIC}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Numeric Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.NUMERIC}    
    ...                                       Numeric Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC016
    [Documentation]
    ...    Test Case ID:             SL_TS1TC016
    ...    Test Case Description:    Verify if Username accepts special characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts special characters.
    ...    Post-Requisite:
    ...        - Username accepts special characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.SPECIALS}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Special Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.SPECIALS}    
    ...                                       Special Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC017
    [Documentation]
    ...    Test Case ID:             SL_TS1TC017
    ...    Test Case Description:    Verify if Username accepts alphanumeric characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts alphanumeric characters.
    ...    Post-Requisite:
    ...        - Username accepts alphanumeric characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.ALPHANUMERIC}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Alphanumeric Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.ALPHANUMERIC}    
    ...                                       Alphanumeric Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC018
    [Documentation]
    ...    Test Case ID:             SL_TS1TC018
    ...    Test Case Description:    Verify if Username accepts specialphabetic characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts specialphabetic characters.
    ...    Post-Requisite:
    ...        - Username accepts specialphabetic characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.SPECIALPHABETIC}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Specialphabetic Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.SPECIALPHABETIC}    
    ...                                       Specialphabetic Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC019
    [Documentation]
    ...    Test Case ID:             SL_TS1TC019
    ...    Test Case Description:    Verify if Username accepts specialnumeric characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts specialnumeric characters.
    ...    Post-Requisite:
    ...        - Username accepts specialnumeric characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.SPECIALNUMERIC}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Specialnumeric Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.SPECIALNUMERIC}    
    ...                                       Specialnumeric Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC020
    [Documentation]
    ...    Test Case ID:             SL_TS1TC020
    ...    Test Case Description:    Verify if Username accepts specialphanumeric characters.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Username accepts specialphanumeric characters.
    ...    Post-Requisite:
    ...        - Username accepts specialphanumeric characters.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.USERNAME_FIELD}    
    ...                                       ${UsernameTestValues.SPECIALPHANUMERIC}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.USERNAME_FIELD}  
    ...                                       Login - Specialphanumeric Username
    WF01_Print_Value_to_Text_File             ${UsernameTestValues.SPECIALPHANUMERIC}    
    ...                                       Specialphanumeric Username.txt
    Clear Element Text                        ${Login_Forms.USERNAME_FIELD}
SL_TS1TC021
    [Documentation]
    ...    Test Case ID:             SL_TS1TC021
    ...    Test Case Description:    Verify if Password field hides the characters typed by the user.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Verify if Password field hides the characters typed by the user.
    ...    Post-Requisite:
    ...        - Password field hides the characters typed by the user.
    [Tags]    Login    Positive Testing    Regression
    Input Text                                ${Login_Forms.PASSWORD_FIELD}    
    ...                                       ${PasswordTestValues.ALPHANUMERIC}
    Element Attribute Value Should Be         ${Login_Forms.PASSWORD_FIELD}    
    ...                                       type    password
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.PASSWORD_FIELD}  
    ...                                       Login - Hidden Password
    Clear Element Text                        ${Login_Forms.PASSWORD_FIELD}
SL_TS1TC022
    [Documentation]
    ...    Test Case ID:             SL_TS1TC022
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
    [Tags]    Login    Positive Testing    Regression    Sanity 
    SL_R1K001_Login                           ${UsernameTestValues.CORRECT}      ${PasswordTestValues.CORRECT}
    Wait Until Element Is Visible             ${InventoryHeader.DIV}
    Location Should Contain                   ${InventoryURL.SUB}
    SS02_Capture_Full_Page_Showing_Element    ${InventoryHeader.DIV}    
    ...                                       Inventory - Landing Page