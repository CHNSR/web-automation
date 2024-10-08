*** Keywords ***
Fill address detail and start payment
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    Seleium.wait until element is visible    ${cart_locator.input_box} 
    cart_page.Input name     ${name}
    cart_page.Input surName    ${surname}
    cart_page.Input address     ${address}
    cart_page.Input phone    ${phone}
    cart_page.Input email     ${email}
    cart_page.Click pay button

Purchase product
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    home_page.Open cart
    Fill address detail and start payment    
    ...    ${name}    
    ...    ${surname}    
    ...    ${address}    
    ...    ${phone}    
    ...    ${email}
    payment_page.Select payment method
    payment_page.Click next
    
