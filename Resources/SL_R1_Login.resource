*** Settings ***
Resource    SL_Common.resource

*** Keywords ***
SL_R1K001_Login
    [Documentation]    This page-specific custom keyword fills username and password credentials and clicks the login button.
    [Arguments]        ${username}    ${password}
    H003_Input_Text_with_Sync         ${Login_Forms.USERNAME_FIELD}    ${username}
    H004_Input_Password_with_Sync     ${Login_Forms.PASSWORD_FIELD}    ${password}
    H001_Click_Element_with_Sync      ${Login_Forms.LOGIN_BUTTON}