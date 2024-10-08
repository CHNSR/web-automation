*** Keywords ***
Input text in search bar
    [Arguments]    ${searchtxt}
    common.Input text    ${home_locator.input_txt}    ${searchtxt}
    
Add product to cart
    [Arguments]    ${add_to_cart_button}
    common.Wait and click    ${add_to_cart_button}

Open cart
    common.Wait and click    ${common_locator.shopping_cart_icon}

Click search button
    common.wait and click    ${home_locator.search_btn}