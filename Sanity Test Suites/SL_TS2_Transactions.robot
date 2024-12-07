*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         December 7, 2024
...    Test Scenario:        Check the outcome based on login and password combinations that will give an error.
...    Test Scenario ID:     SL_TS2
Library           DataDriver    Datasets/Transactions.csv
Library           String
Resource          ../Resources/SL_R1_Login.resource
Resource          ../Resources/SL_R2_Inventory.resource
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
    # START - Click Cart button.
    H001_Click_Element_with_Sync              ${InventoryCart.LINK}
    Wait Until Element Is Visible             ${CartSubHeader.DIV}
    SS02_Capture_Full_Page_Showing_Element    ${InventoryHeader.DIV}
    ...                                       C2 - Cart
    # END - Click Cart button.
    # START - Click Checkout button.
    H001_Click_Element_with_Sync              ${CartLinks.CHECKOUT}
    Wait Until Element Is Visible             ${InformationSubHeader.DIV}
    SS02_Capture_Full_Page_Showing_Element    ${InformationSubHeader.DIV}
    ...                                       C3 - Information
    # END - Click Checkout button.
    # START - Fill First Name, Last Name, and Zip Code. Click Continue button.
    H003_Input_Text_with_Sync                 ${InformationForm.FIRST_NAME_FIELD}    ${first_name}
    H003_Input_Text_with_Sync                 ${InformationForm.LAST_NAME_FIELD}     ${last_name}
    H003_Input_Text_with_Sync                 ${InformationForm.POSTAL_CODE_FIELD}   ${zip_code}
    SS02_Capture_Full_Page_Showing_Element    ${InformationSubHeader.DIV}
    ...                                       C4 - Information with Values
    H001_Click_Element_with_Sync              ${InformationButtons.CONTINUE}
    # END - Fill First Name, Last Name, and Zip Code. Click Continue button.
    # START - Verify if computed total is equal to actual (UI) total.
    # Declaring the tax percentage
    ${tax_percentage}=   Set Variable    8
    # Get the amount for total, subtotal, and tax amount.
    ${raw_subtotal}=        Get Text     ${OverviewForm.SUBTOTAL}
    ${raw_tax}=             Get Text     ${OverviewForm.TAX}
    ${raw_total}=           Get Text     ${OverviewForm.TOTAL}
    # Extract only the numerical values.
    ${subtotal}=        Get Substring    ${raw_subtotal}    13
    ${tax}=             Get Substring    ${raw_tax}         6
    ${total}=           Get Substring    ${raw_total}       8  
    # Convert the numerical values.
    ${subtotal}=        Convert To Number    ${subtotal}    2
    ${tax}=             Convert To Number    ${tax}         2
    ${total}=           Convert To Number    ${total}       2

    # Robot Framework Computations
    ${computed_tax_amount}=    Evaluate             ${tax_percentage} / 100 * ${subtotal}
    ${computed_tax_amount}=    Convert To Number    ${computed_tax_amount}    2

    Should Be True    ${subtotal} + ${computed_tax_amount} == ${total}
    SS02_Capture_Full_Page_Showing_Element    ${InformationSubHeader.DIV}
    ...                                       C5 - Overview
    # END - Verify if computed total is equal to actual (UI) total.
    # START - Verify success message in transaction.
    H001_Click_Element_with_Sync              ${OverviewButtons.FINISH}
    Wait Until Element Is Visible             ${CompleteSubHeader.DIV}
    SS02_Capture_Full_Page_Showing_Element    ${CompleteSubHeader.DIV}
    ...                                       C6 - Complete
    # END - Verify success message in transaction.