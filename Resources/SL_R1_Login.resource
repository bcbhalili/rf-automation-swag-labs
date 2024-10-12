*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

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
WF01_Print_Value_to_Text_File
    [Documentation]    This custom keyword creates if does not exist and write a content to that file.
    [Arguments]        ${content}    ${file_name}
    Create File        path=Documentations/${TEST_NAME}/${file_name}
    ...                content=${content}