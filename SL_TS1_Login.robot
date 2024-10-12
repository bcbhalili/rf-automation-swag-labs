*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         October 5, 2024
...    Test Scenario:        Check login interface (UI/UX) and its functionality.
...    Test Scenario ID:     SL_TS1
Library           SeleniumLibrary
Variables         V1_Setup.py
Variables         V2_Login.py
Suite Setup       SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Suite Teardown    Close Browser

*** Keywords ***
SSU_Open_Automation_Browser
    [Documentation]    This custom keyword opens an automation browser, navigtes to the target URL, then maximizes the browser window.
    [Arguments]        ${url}    ${browser}
    Open Browser       ${url}    ${browser}
    Maximize Browser Window
SS01_Capture_Element
    [Documentation]    This custom keyword screen captures a specific element.
    [Arguments]        ${locator}    ${description}
    Wait Until Element Is Visible    ${locator}
    Capture Element Screenshot       ${locator}   
    ...                              Documentations/${TEST_NAME}/${description}.png
SS02_Capture_Full_Page_Showing_Element
    [Documentation]    This custom keyword scroll to the target element and screen captures a full page.
    [Arguments]        ${locator}    ${description}
    Scroll Element Into View         ${locator}
    Wait Until Element Is Visible    ${locator}
    Capture Page Screenshot          Documentations/${TEST_NAME}/${description} Full Page.png

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
    [Tags]    Login    Positive Testing
    Element Should Be Visible                 ${Login_Header.DIV}
    SS01_Capture_Element                      ${Login_Header.DIV}    
    ...                                       Login - Header
    SS02_Capture_Full_Page_Showing_Element    ${Login_Header.DIV}     
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
    [Tags]    Login    Positive Testing
    Element Text Should Be                    ${Login_Header.DIV}    
    ...                                       Swag Labs
    SS01_Capture_Element                      ${Login_Header.DIV}    
    ...                                       Login - Header
    SS02_Capture_Full_Page_Showing_Element    ${Login_Header.DIV}     
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
    [Tags]    Login    Positive Testing
    Element Should Be Visible                 ${Login_Forms.USERNAME_FIELD}  
    SS01_Capture_Element                      ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.USERNAME_FIELD}     
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
    [Tags]    Login    Positive Testing
    Element Should Be Enabled                 ${Login_Forms.USERNAME_FIELD}  
    SS01_Capture_Element                      ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.USERNAME_FIELD}     
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
    [Tags]    Login    Positive Testing
    Element Attribute Value Should Be         ${Login_Forms.USERNAME_FIELD}      
    ...                                       placeholder    Username 
    SS01_Capture_Element                      ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field
    SS02_Capture_Full_Page_Showing_Element    ${Login_Forms.USERNAME_FIELD}     
    ...                                       Login - Username Field