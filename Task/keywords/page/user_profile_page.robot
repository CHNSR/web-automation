*** Keywords ***
Show orderid to view
    common.Wait and scroll   ${user_profile_locator.table}
    
Get order form pending payment table
    ${GetOrderID}=    Get Text    ${user_profile_locator.orderId}
    Log To Console    OrderId form Pending payment: ${GetOrderID}

Log out
    common.Click element when ready    ${user_profile_locator.logout_btn} 