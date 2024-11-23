*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem
Library        Collections
Library        ExcelLibrary
Variables      ../Libraries/Common/C1_TestValues.py
Variables      ../Libraries/Variables/V1_Setup.py
Variables      ../Libraries/Variables/V2_Login.py
Variables      ../Libraries/Variables/V3_LoginTestValues.py
Variables      ../Libraries/Variables/V4_Inventory.py
Variables      ../Libraries/Variables/V5_InventoryTestValues.py
Variables      ../Libraries/Variables/V6_ProductDescription.py
Variables      ../Libraries/Variables/V7_ProductDescriptionTestValues.py
Variables      ../Libraries/Variables/V8_Cart.py

*** Keywords ***
# Legend: H      - Helper Custom Keywords
#         SSU    - Suite Setup Keywords
#         SS     - Screenshot Keywords
#         WF     - Write File Keywords
#-------------------------------------------------------------------------------------------------------------------------------------------------   
H001_Click_Element_with_Sync
    [Documentation]    This helper custom keyword waits until a particular element is visible then clicks it.
    [Arguments]        ${locator}
    Wait Until Element Is Visible    ${locator}    ${Setup.SYNC_TIMEOUT}
    Click Element                    ${locator}     
H002_Double_Click_Element_with_Sync
    [Documentation]    This helper custom keyword waits until a particular element is visible then double-clicks it.
    [Arguments]        ${locator}
    Wait Until Element Is Visible    ${locator}    ${Setup.SYNC_TIMEOUT}
    Double Click Element             ${locator}   
H003_Input_Text_with_Sync
    [Documentation]    This helper custom keyword waits until a particular field is visible then fills the field with a particular text.
    [Arguments]        ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    ${Setup.SYNC_TIMEOUT}
    Input Text         ${locator}    ${text} 
H004_Input_Password_with_Sync
    [Documentation]    This helper custom keyword waits until a particular password field is visible then fills the field with a particular password.
    [Arguments]        ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    ${Setup.SYNC_TIMEOUT}
    Input Password     ${locator}    ${text}     
H005_Check_Element_Text_with_Sync
    [Documentation]    This helper custom keyword waits until a particular element is visible then checks the element text if it is the expected text.
    [Arguments]        ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    ${Setup.SYNC_TIMEOUT}
    Wait Until Element Contains      ${locator}    ${text}
H006_Check_Selected_Label_in_Dropdown
    [Documentation]    This helper custom keyword waits until a particular dropdown is visible, gets the selected list label, then checks the retrieved list label if it is the expected list label.
    [Arguments]        ${locator}    ${label}
    ${selected_label}=     Get Selected List Label    
    ...                    ${locator}
    Should Be Equal        ${selected_label}    
    ...                    ${label}
#-------------------------------------------------------------------------------------------------------------------------------------------------                  
SSU_Open_Automation_Browser
    [Documentation]    This custom keyword opens an automation browser, navigtes to the target URL, then maximizes the browser window.
    [Arguments]        ${url}    ${browser}
    Open Browser       ${url}    ${browser}
    Maximize Browser Window
#-------------------------------------------------------------------------------------------------------------------------------------------------   
SS01_Capture_Element
    [Documentation]    This custom keyword screen captures a specific element.
    [Arguments]        ${locator}    ${description}
    Wait Until Element Is Visible    ${locator}
    Capture Element Screenshot       ${locator}   
    ...                              Documentations/${SUITE_NAME}/${TEST_NAME}/${description}.png
SS02_Capture_Full_Page_Showing_Element
    [Documentation]    This custom keyword scroll to the target element and screen captures a full page.
    [Arguments]        ${locator}    ${description}
    Scroll Element Into View         ${locator}
    Wait Until Element Is Visible    ${locator}
    Capture Page Screenshot          Documentations/${SUITE_NAME}/${TEST_NAME}/${description} Full Page.png
SS03_Capture_WebElement_and_Full_Page
    [Documentation]    This custom keyword scroll to the target element and screen captures the target element and full page.
    [Arguments]        ${locator}    ${description}
    SS01_Capture_Element                      ${locator}    ${description}
    SS02_Capture_Full_Page_Showing_Element    ${locator}    ${description}
#-------------------------------------------------------------------------------------------------------------------------------------------------   
WF01_Print_Value_to_Text_File
    [Documentation]    This custom keyword creates if does not exist and write a content to that file.
    [Arguments]        ${content}    ${file_name}
    Create File        path=Documentations/${SUITE_NAME}/${TEST_NAME}/${file_name}
    ...                content=${content}
#-------------------------------------------------------------------------------------------------------------------------------------------------   