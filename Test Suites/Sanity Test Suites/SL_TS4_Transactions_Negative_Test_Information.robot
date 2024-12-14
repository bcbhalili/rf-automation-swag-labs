*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         December 14, 2024
...    Test Scenario:        Check if the transaction is not created based on the blanks in the Information fields.
...    Test Scenario ID:     SL_TS4
Library           DataDriver    Datasets/TransactionsV3.csv
Resource          ../../Resources/SL_R1_Login.resource
Resource          ../../Resources/SL_R2_Product.resource
Test Setup        SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Test Teardown     Close Browser
Test Template     SL_TS3_TMP

*** Test Cases ***
SL_TS3TC${combination_name}    ${combination_name}
    ...                        ${username}    
    ...                        ${password}    
    ...                        ${number_of_items_added_to_cart}    
    ...                        ${first_name}
    ...                        ${last_name}
    ...                        ${zip_code}
    ...                        ${error_message}
    
*** Keywords ***
SL_TS3_TMP
    [Documentation]
    ...    Custom Keyword ID:             SL_TS3_TMP
    ...    Custom Keyword Description:    This is a test template keyword that will attempt to create a transaction based on the following considerations:
    ...                                       - First Name
    ...                                       - Last Name
    ...                                       - Zip Code
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify if test will fail if the number of Items to be added to cart has blanks in the information field.
    [Tags]    Transaction    Negative Testing    Sanity
    [Arguments]    ${combination_name}
    ...            ${username}    
    ...            ${password}    
    ...            ${number_of_items_added_to_cart} 
    ...            ${first_name}
    ...            ${last_name}
    ...            ${zip_code}
    ...            ${error_message}
    SL_R1K001_Login                           ${username}                
    ...                                       ${password}
    SL_R2K001_Add_to_Cart                     ${number_of_items_added_to_cart}
    SS02_Capture_Full_Page_Showing_Element    ${InventoryHeader.DIV}
    ...                                       C1 - Inventory
    SL_R2K002_Go_to_Cart
    SS02_Capture_Full_Page_Showing_Element    ${InventoryHeader.DIV}
    ...                                       C2 - Cart
    SL_R2K003_Go_to_Checkout
    SL_R2K004_Fill_Checkout_Details           ${first_name}    
    ...                                       ${last_name}    
    ...                                       ${zip_code}
    H001_Click_Element_with_Sync              ${InformationButtons.CONTINUE}
    Wait Until Element Contains               ${InformationError.TEXT}        
    ...                                       ${error_message}
    SS02_Capture_Full_Page_Showing_Element    ${InformationSubHeader.DIV}
    ...                                       C3 - Information with Error