*** Keywords ***
Open cart
    common.Click element when ready    ${common_locator.shopping_cart_icon}
    
Input name 
    [Arguments]    ${name} 
    common.Input text    ${cart_locator.input_txt_name}    ${name}

Input surname 
    [Arguments]    ${surname}    
    common.Input text    ${cart_locator.input_txt_surName}    ${surname}

Input address 
    [Arguments]     ${address}
    common.Input text    ${cart_locator.input_txt_address}      ${address}

Input phone 
    [Arguments]    ${phone} 
    common.Input text    ${cart_locator.input_txt_phone}    ${phone}

Input email 
    [Arguments]    ${email}
    common.Input text    ${cart_locator.input_txt_email}    ${email}

Click pay button
    common.Click element when ready     ${cart_locator.pay_btn}