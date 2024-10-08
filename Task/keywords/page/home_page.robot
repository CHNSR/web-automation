*** Settings ***
Resource    ${CURIRD}../resources/import.robot    
*** Keywords ***
Search product in search bar
    [Arguments]    ${searchtxt}
    common.Input text    ${home_locator.input_txt}    ${searchtxt}
    SeleniumLibrary.Click Element    ${home_locator.search_btn}

Add product to cart
    [Arguments]    ${add_to_cart_button}
    common.Wait and click    ${add_to_cart_button}
