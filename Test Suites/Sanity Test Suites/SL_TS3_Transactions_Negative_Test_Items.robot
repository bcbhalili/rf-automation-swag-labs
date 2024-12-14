*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         December 14, 2024
...    Test Scenario:        Check if the transaction is not created based on the number of items to be added to cart.
...    Test Scenario ID:     SL_TS3
Library           DataDriver    Datasets/TransactionsV2.csv
Resource          ../../Resources/SL_R1_Login.resource
Resource          ../../Resources/SL_R2_Product.resource
Test Setup        SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Test Teardown     Close Browser
Test Template     SL_TS3_TMP

*** Test Cases ***
SL_TS3TC${combination_name}    ${combination_name}    ${username}    ${password}    ${number_of_items_added_to_cart}
    
*** Keywords ***
SL_TS3_TMP
    [Documentation]
    ...    Custom Keyword ID:             SL_TS3_TMP
    ...    Custom Keyword Description:    This is a test template keyword that will attempt to create a transaction based on the following considerations:
    ...                                       - Number of Items to be added to cart
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Verify if test will fail if the number of Items to be added to cart is not in range with the current items.
    [Tags]    Transaction    Negative Testing    Sanity
    [Arguments]    ${combination_name}
    ...            ${username}    
    ...            ${password}    
    ...            ${number_of_items_added_to_cart}    
    SL_R1K001_Login      ${username}                
    ...                  ${password}
    ${status}=           Run Keyword And Return Status
    ...                  SL_R2K001_Add_to_Cart          ${number_of_items_added_to_cart}
    Run Keyword If       '${status}' == '${True}'       Fail   
    Create File    path=Documentations/${SUITE_NAME}/${TEST_NAME}/${combination_name}.txt
    ...            content=${number_of_items_added_to_cart} is not in range.