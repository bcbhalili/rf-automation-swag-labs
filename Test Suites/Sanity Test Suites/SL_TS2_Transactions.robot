*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         December 7, 2024
...    Test Scenario:        Check if the transaction is created based on the number of items to be added to cart.
...    Test Scenario ID:     SL_TS2
Library           DataDriver    Datasets/Transactions.csv
Resource          ../../Resources/SL_R1_Login.resource
Resource          ../../Resources/SL_R2_Product.resource
Test Setup        SSU_Open_Automation_Browser    ${Setup.URL}    ${Setup.BROWSER}
Test Teardown     Close Browser
Test Template     SL_TS2_TMP

*** Test Cases ***
SL_TS2TC${combination_name}    ${username}    
    ...                        ${password}    
    ...                        ${number_of_items_added_to_cart}    
    ...                        ${first_name}
    ...                        ${last_name}
    ...                        ${zip_code}
    ...                        ${combination_name}
    
*** Keywords ***
SL_TS2_TMP
    [Documentation]
    ...    Custom Keyword ID:             SL_TS2_TMP
    ...    Custom Keyword Description:    This is a test template keyword that will create a transaction based on the following considerations:
    ...                                       - First Name
    ...                                       - Last Name
    ...                                       - Zip Code
    ...                                       - Number of Items to be added to cart
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Fill username and password.
    ...        3. Click Login button.
    ...        4. Add items to cart depending on number needed.
    ...        5. Click Cart button.
    ...        6. Click Checkout button.
    ...        7. Fill First Name, Last Name, and Zip Code.
    ...        8. Click Continue button.
    ...        9. Verify if computed total is equal to actual (UI) total.
    ...       10. Click Finish.
    ...       11. Verify success message in transaction.
    [Tags]    Transaction    Positive Testing    Sanity
    [Arguments]    ${combination_name}
    ...            ${username}    
    ...            ${password}    
    ...            ${number_of_items_added_to_cart}    
    ...            ${first_name}
    ...            ${last_name}
    ...            ${zip_code}
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
    SS02_Capture_Full_Page_Showing_Element    ${InformationSubHeader.DIV}
    ...                                       C3 - Information with Values
    H001_Click_Element_with_Sync              ${InformationButtons.CONTINUE}
    SL_R2K005_Fill_Verify_Computed_Total_with_Actual_Total
    SS02_Capture_Full_Page_Showing_Element    ${InformationSubHeader.DIV}
    ...                                       C4 - Overview
    SL_R2K006_Finish_Transaction
    SS02_Capture_Full_Page_Showing_Element    ${CompleteSubHeader.DIV}
    ...                                       C5 - Complete