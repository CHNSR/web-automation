*** Keywords ***
Input text in search bar
    [Arguments]    ${searchtxt}
    common.Input text    ${home_locator.input_txt}    ${searchtxt}
    
Add product to cart
    [Arguments]    ${add_to_cart_button}
    common.Click element when ready    ${add_to_cart_button}

Click search product button
    common.click element when ready    ${home_locator.search_btn}