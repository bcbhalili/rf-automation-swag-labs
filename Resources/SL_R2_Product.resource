*** Settings ***
Resource    SL_Common.resource

*** Keywords ***
SL_R2K001_Add_to_Cart
    [Documentation]    This page-specific custom keyword adds items to cart depending on the number of items needed to be added.
    [Arguments]        ${number_of_items_added_to_cart}
    @{add_to_cart_buttons}=             Get WebElements    ${InventoryProduct.ADD_TO_CART_BUTTON}
    ${add_to_cart_buttons_length}=      Get Length         ${add_to_cart_buttons}
    Should Be True                      ${number_of_items_added_to_cart} <= ${add_to_cart_buttons_length} and ${number_of_items_added_to_cart} >= 0
    FOR    ${index}    IN RANGE    0    ${number_of_items_added_to_cart}
        Log    ${index}
        H001_Click_Element_with_Sync    ${add_to_cart_buttons}[${index}]
    END
SL_R2K002_Go_to_Cart
    [Documentation]    This page-specific custom keyword navigates to the cart page.
    H001_Click_Element_with_Sync              ${InventoryCart.LINK}
    Wait Until Element Is Visible             ${CartSubHeader.DIV}
SL_R2K003_Go_to_Checkout
    [Documentation]    This page-specific custom keyword navigates to the checkout page.
    H001_Click_Element_with_Sync              ${CartLinks.CHECKOUT}
    Wait Until Element Is Visible             ${InformationSubHeader.DIV}
SL_R2K004_Fill_Checkout_Details
    [Documentation]    This page-specific custom keyword fills out the checkout details:
    ...                    1. First Name
    ...                    2. Last Name
    ...                    3. Zip Code
    [Arguments]        ${first_name}    ${last_name}    ${zip_code}
    H003_Input_Text_with_Sync                 ${InformationForm.FIRST_NAME_FIELD}    ${first_name}
    H003_Input_Text_with_Sync                 ${InformationForm.LAST_NAME_FIELD}     ${last_name}
    H003_Input_Text_with_Sync                 ${InformationForm.POSTAL_CODE_FIELD}   ${zip_code}
SL_R2K005_Fill_Verify_Computed_Total_with_Actual_Total
    [Documentation]    This page-specific custom keyword compares the robot framework-computed total with the actual (UI) total.
    # Get the amount for total, subtotal, and tax amount from UI (actual values).
    ${raw_subtotal}=    Get Text             ${OverviewForm.SUBTOTAL}
    ${raw_tax}=         Get Text             ${OverviewForm.TAX}
    ${raw_total}=       Get Text             ${OverviewForm.TOTAL}
    # Extract only the numerical values.
    ${subtotal}=        Get Substring        ${raw_subtotal}    ${OverviewTestValues.SUBTOTAL_START_INDEX}
    ${tax}=             Get Substring        ${raw_tax}         ${OverviewTestValues.TAX_START_INDEX}
    ${total}=           Get Substring        ${raw_total}       ${OverviewTestValues.TOTAL_START_INDEX}
    # Convert the numerical values.
    ${subtotal}=        Convert To Number    ${subtotal}        ${OverviewTestValues.AMOUNT_PRECISION}
    ${tax}=             Convert To Number    ${tax}             ${OverviewTestValues.AMOUNT_PRECISION}
    ${total}=           Convert To Number    ${total}           ${OverviewTestValues.AMOUNT_PRECISION}

    # Robot Framework Computation
    ${computed_tax_amount}=    Evaluate             ${OverviewTestValues.TAX_PERCENTAGE} / 100 * ${subtotal}
    ${computed_tax_amount}=    Convert To Number    ${computed_tax_amount}    ${OverviewTestValues.AMOUNT_PRECISION}

    Should Be True    ${subtotal} + ${computed_tax_amount} == ${total}
SL_R2K006_Finish_Transaction
    [Documentation]    This page-specific custom keyword finishes the transaction.
    H001_Click_Element_with_Sync              ${OverviewButtons.FINISH}
    Wait Until Element Is Visible             ${CompleteSubHeader.DIV}