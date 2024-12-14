*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         October 26, 2024
...    Test Scenario:        Check the outcome based on login and password combinations that will give an error.
...    Test Scenario ID:     SL_TS2
Library           DataDriver    Datasets/Login.csv
Resource          ../../Resources/SL_R1_Login.resource
Suite Setup       SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Suite Teardown    Close Browser
Test Teardown     Reload Page
Test Template     SL_TS2_TMP

*** Test Cases ***
SL_TS2TC${combination_name}    ${username}    ${password}    ${error_message}    ${combination_name}
    
*** Keywords ***
SL_TS2_TMP
    [Documentation]
    ...    Custom Keyword ID:             SL_TS2_TMP
    ...    Custom Keyword Description:    This is a test template keyword that will perform negative testing using various username and password combinations.
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify error message if username is correct and password is invalid.
    [Tags]    Login    Negative Testing    Sanity
    [Arguments]    ${username}    ${password}    ${error_message}    ${combination_name}
    SL_R1K001_Login                           ${username}                ${password}
    H005_Check_Element_Text_with_Sync         ${Login_Forms.ERROR}       ${error_message}
    SS03_Capture_WebElement_and_Full_Page     ${Login_Forms.ERROR}    
    ...                                       Login - ${combination_name}