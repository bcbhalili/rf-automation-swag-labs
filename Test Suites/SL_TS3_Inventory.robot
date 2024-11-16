*** Settings ***
Documentation
...    Automation Engineer:  Biendroid
...    Date Created:         October 26, 2024
...    Test Scenario:        Check Inventory interface (UI/UX) and its functionalities.
...    Test Scenario ID:     SL_TS3
Resource          ../Resources/SL_R1_Login.resource
Suite Setup       Run Keywords    SSU_Open_Automation_Browser    ${Setup.URL}                    ${Setup.BROWSER}
...               AND             SL_R1K001_Login                ${UsernameTestValues.CORRECT}   ${PasswordTestValues.CORRECT}
Suite Teardown    Close Browser

*** Test Cases ***
SL_TS3TC001
    [Documentation]
    ...    Test Case ID:             SL_TS3TC001
    ...    Test Case Description:    Verify if Inventory header is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory header is visible.
    ...    Post-Requisite:
    ...        - Inventory Header should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Visible                 ${InventoryHeader.DIV}
    SS03_Capture_WebElement_and_Full_Page     ${InventoryHeader.DIV}    
    ...                                       Inventory - Header
SL_TS3TC002
    [Documentation]
    ...    Test Case ID:             SL_TS3TC002
    ...    Test Case Description:    Verify if Inventory header text is "Swag Labs".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory header text is "Swag Labs".
    ...    Post-Requisite:
    ...        - Inventory Header text should be "Swag Labs".
    [Tags]     Inventory    Positive Testing    Regression
    H005_Check_Element_Text_with_Sync         ${InventoryHeader.DIV}    
    ...                                       ${InventoryElementTexts.HEADER}
    SS03_Capture_WebElement_and_Full_Page     ${InventoryHeader.DIV}    
    ...                                       Inventory - Header
SL_TS3TC003
    [Documentation]
    ...    Test Case ID:             SL_TS3TC003
    ...    Test Case Description:    Verify if Shopping Cart icon is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Shopping Cart icon is visible.
    ...    Post-Requisite:
    ...        - Shopping Cart should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Visible                 ${InventoryCart.LINK}    
    SS03_Capture_WebElement_and_Full_Page     ${InventoryHeader.DIV}    
    ...                                       Inventory - Header
SL_TS3TC004
    [Documentation]
    ...    Test Case ID:             SL_TS3TC004
    ...    Test Case Description:    Verify if Inventory sub-header is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory sub-header is visible.
    ...    Post-Requisite:
    ...        - Inventory sub-header should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Visible                 ${InventorySubHeader.DIV}    
    SS03_Capture_WebElement_and_Full_Page     ${InventorySubHeader.DIV}      
    ...                                       Inventory - Sub-Header
SL_TS3TC005
    [Documentation]
    ...    Test Case ID:             SL_TS3TC005
    ...    Test Case Description:    Verify if Inventory sub-header text is "Products".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Inventory sub-header text is "Products".
    ...    Post-Requisite:
    ...        - Inventory sub-header text should be "Products".
    [Tags]     Inventory    Positive Testing    Regression
    H005_Check_Element_Text_with_Sync         ${InventorySubHeader.DIV}     
    ...                                       ${InventoryElementTexts.SUBHEADER}  
    SS03_Capture_WebElement_and_Full_Page     ${InventorySubHeader.DIV}      
    ...                                       Inventory - Sub-Header
SL_TS3TC006
    [Documentation]
    ...    Test Case ID:             SL_TS3TC006
    ...    Test Case Description:    Verify if Filter Dropdown is visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Filter Dropdown is visible.
    ...    Post-Requisite:
    ...        - Filter Dropdown should be visible.
    [Tags]     Inventory    Positive Testing    Regression
    Element Should Be Enabled                 ${InventoryFilter.DROPDOWN} 
    SS03_Capture_WebElement_and_Full_Page     ${InventoryFilter.DROPDOWN}      
    ...                                       Inventory - Filter Dropdown
SL_TS3TC007
    [Documentation]
    ...    Test Case ID:             SL_TS3TC007
    ...    Test Case Description:    Verify if Filter Dropdown's default value is "Name (A to Z)".
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Filter Dropdown's default value is "Name (A to Z)".
    ...    Post-Requisite:
    ...        - Filter Dropdown default value should be "Name (A to Z)".
    [Tags]     Inventory    Positive Testing    Regression
    H006_Check_Selected_Label_in_Dropdown     ${InventoryFilter.DROPDOWN}     Name (A to Z)
    SS03_Capture_WebElement_and_Full_Page     ${InventorySubHeader.DIV}      
    ...                                       Inventory - Sub-Header
SL_TS3TC008
    [Documentation]
    ...    Test Case ID:             SL_TS3TC008
    ...    Test Case Description:    Verify if Filter Dropdown options has the following:
    ...                                  - Name (A to Z)
    ...                                  - Name (Z to A)
    ...                                  - Price (low to high)
    ...                                  - Price (high to low)
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if Filter Dropdown options has the following:
    ...                                  - Name (A to Z)
    ...                                  - Name (Z to A)
    ...                                  - Price (low to high)
    ...                                  - Price (high to low)
    ...    Post-Requisite:
    ...        - Filter Dropdown options must have the following:
    ...                                  - Name (A to Z)
    ...                                  - Name (Z to A)
    ...                                  - Price (low to high)
    ...                                  - Price (high to low)
    [Tags]     Inventory    Positive Testing    Regression
    @{filter_options}=           Get List Items       ${InventoryFilter.DROPDOWN}
    FOR    ${filter_option}    IN    @{filter_options}
        Log                          ${filter_option}
        List Should Contain Value    ${filter_options}    ${filter_option}
    END
    SS03_Capture_WebElement_and_Full_Page     ${InventoryFilter.DROPDOWN}    
    ...                                       Inventory - Filter Options
SL_TS3TC009
    [Documentation]
    ...    Test Case ID:             SL_TS3TC009
    ...    Test Case Description:    Verify if all items have their product names visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if all items have their product names visible.
    ...    Post-Requisite:
    ...        - All items have their product names visible.
    [Tags]     Inventory    Positive Testing    Regression
    @{product_names}=      Get WebElements    ${InventoryProduct.NAME}    # The variable "product_names" will contain 6 WebElements.
    Set Global Variable    ${product_names}
    FOR    ${product_name}    IN    @{product_names}
        Log                         ${product_name}
        Element Should Be Visible   ${product_name}
        SS01_Capture_Element        ${product_name}    ${product_name.text}
    END
SL_TS3TC010
    [Documentation]
    ...    Test Case ID:             SL_TS3TC010
    ...    Test Case Description:    Verify if all items have their product descriptions visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if all items have their product descriptions visible.
    ...    Post-Requisite:
    ...        - All items have their product descriptions visible.
    [Tags]     Inventory    Positive Testing    Regression
    @{product_descriptions}=      Get WebElements    ${InventoryProduct.DESCRIPTION}    # The variable "product_descriptions" will contain 6 WebElements.
    Set Global Variable    ${product_descriptions}
    FOR    ${product_name}    ${product_description}    IN ZIP    ${product_names}    ${product_descriptions}
        Log    ${product_name} - ${product_description}
        Element Should Be Visible    ${product_description}
        SS01_Capture_Element         ${product_description}    
        ...                          ${product_name.text}
    END
SL_TS3TC011
    [Documentation]
    ...    Test Case ID:             SL_TS3TC011
    ...    Test Case Description:    Verify if all items have their product prices visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if all items have their product prices visible.
    ...    Post-Requisite:
    ...        - All items have their product prices visible.
    [Tags]     Inventory    Positive Testing    Regression
    @{product_sections}=    Get WebElements    ${InventoryProduct.DIV}      # The variable "product_sections" will contain 6 WebElements.
    @{product_prices}=      Get WebElements    ${InventoryProduct.PRICE}    # The variable "product_prices" will contain 6 WebElements.
    Set Global Variable    ${product_prices}
    FOR    ${product_price}    ${product_section}    IN ZIP    ${product_prices}    ${product_sections}
        Log    ${product_price} - ${product_section}
        Element Should Be Visible    ${product_price}
        SS01_Capture_Element         ${product_section}    
        ...                          ${product_price.text}
    END   
SL_TS3TC012
    [Documentation]
    ...    Test Case ID:             SL_TS3TC012
    ...    Test Case Description:    Verify if all items have their add to cart buttons visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if all items have their add to cart buttons visible.
    ...    Post-Requisite:
    ...        - All items have their add to cart buttons visible.
    [Tags]     Inventory    Positive Testing    Regression
    @{add_to_cart_buttons}=          Get WebElements    
    ...                              ${InventoryProduct.ADD_TO_CART_BUTTON}    # The variable "add_to_cart_buttons" will contain 6 WebElements.
    ${add_to_cart_buttons_length}=   Get Length         
    ...                              ${add_to_cart_buttons}
    Set Global Variable              ${add_to_cart_buttons}

    FOR    ${index}    IN RANGE    0    ${add_to_cart_buttons_length}
        Log                         ${index}
        Element Should Be Visible   ${add_to_cart_buttons}[${index}]
        SS01_Capture_Element        ${add_to_cart_buttons}[${index}]    ${index}_Add to Cart Button
    END
SL_TS3TC013
    [Documentation]
    ...    Test Case ID:             SL_TS3TC013
    ...    Test Case Description:    Verify if all items have their image visible.
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if all items have their image visible.
    ...    Post-Requisite:
    ...        - All items have their image visible.
    [Tags]     Inventory    Positive Testing    Regression
    @{item_images}=          Get WebElements    
    ...                      ${InventoryProduct.IMAGE}    # The variable "item_images" will contain 6 WebElements.

    FOR    ${product_name}    ${item_image}    IN ZIP    ${product_names}    ${item_images}
        Log    ${product_name} - ${item_image}
        Element Should Be Visible    ${item_image}
        SS01_Capture_Element         ${item_image}    
        ...                          ${product_name.text}
    END
SL_TS3TC014
    [Documentation]
    ...    Test Case ID:             SL_TS3TC014
    ...    Test Case Description:    Verify if the names of items available to purchase:
    ...                                  - See Datasets/Products.xlsx
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if the names of items available to purchase.
    ...    Post-Requisite:
    ...        - Names of items available to purchase:
    ...            > - See Datasets/Products.xlsx
    [Tags]     Inventory    Positive Testing    Regression
    @{ui_product_names}=    Create List
    FOR    ${product_name}    IN    @{product_names}
        Log                         ${product_name.text}
        Append To List    ${ui_product_names}    
        ...               ${product_name.text}
    END

    Open Excel Document                 Datasets/Products.xlsx            Products
    @{actual_product_names}=            Read Excel Column                 1
    ${actual_product_names_length}=     Get Length                        ${actual_product_names}
    FOR    ${index}    IN RANGE    1    ${actual_product_names_length}
        Log    ${index}
        Should Contain    ${ui_product_names}    ${actual_product_names}[${index}]
    END
    Close All Excel Documents
    SS02_Capture_Full_Page_Showing_Element    ${InventoryFooter.DIV}    Products
SL_TS3TC015
    [Documentation]
    ...    Test Case ID:             SL_TS3TC015
    ...    Test Case Description:    Verify if the description of items available to purchase:
    ...                                  - See Datasets/Products.xlsx
    ...    Pre-Requisites:
    ...        - URL: https://www.saucedemo.com
    ...        - Username: standard_user
    ...        - Password: secret_sauce
    ...    Test Steps:
    ...        1. Navigate to https://www.saucedemo.com.
    ...        2. Login using Username and Password credentials.
    ...        3. Verify if the description of items available to purchase.
    ...    Post-Requisite:
    ...        - Names of description available to purchase:
    ...            > - See Datasets/Products.xlsx
    [Tags]     Inventory    Positive Testing    Regression
    @{ui_product_descriptions}=     Create List
    FOR    ${product_description}    IN    @{product_descriptions}
        Log                          ${product_description.text}
        Append To List    ${ui_product_descriptions}    
        ...               ${product_description.text}
    END

    Open Excel Document                       Datasets/Products.xlsx            Products
    @{actual_product_description}=            Read Excel Column                 2
    ${actual_product_description_length}=     Get Length                        ${actual_product_description}
    FOR    ${index}    IN RANGE    1    ${actual_product_description_length}
        Log    ${index}
        Should Contain    ${ui_product_descriptions}    ${actual_product_description}[${index}]
    END
    Close All Excel Documents
    SS02_Capture_Full_Page_Showing_Element    ${InventoryFooter.DIV}    Products