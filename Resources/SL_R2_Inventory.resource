*** Settings ***
Resource    SL_Common.resource

*** Keywords ***
SL_R2K001_Add_to_Cart
    [Documentation]    This page-specific custom keyword adds items to cart depending on the number of items needed to be added.
    [Arguments]        ${number_of_items_added_to_cart}
    @{add_to_cart_buttons}=             Get WebElements    ${InventoryProduct.ADD_TO_CART_BUTTON}
    ${add_to_cart_buttons_length}=      Get Length         ${add_to_cart_buttons}
    Should Be True                      ${number_of_items_added_to_cart} <= ${add_to_cart_buttons_length} and ${number_of_items_added_to_cart} > 0
    FOR    ${index}    IN RANGE    0    ${number_of_items_added_to_cart}
        Log    ${index}
        H001_Click_Element_with_Sync    ${add_to_cart_buttons}[${index}]
    END