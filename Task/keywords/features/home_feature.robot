*** Settings ***
Resource    ${CUIRDIR}../page/import.robot

*** Keywords ***
Search and add product to cart
    [Arguments]    ${searchtxt}    ${product_name}    
    home_page.Input text in search bar    ${searchtxt}
    home_page.Click search button
    common.Wait and click    ${home_locator.search_txt_product_name}
    home_page.Add product to cart    ${home_locator.add_to_cart_btn}
    common.Wait and click    ${home_locator.ok_box}     ${home_locator.ok_button}

Show order id in console
    common.Click user icon
    user_profile_page.Show orderid
    ${OrderID}    Get Text    ${user_profile_locator.orderID}
    Log To Console    orderID:${OrderID}
