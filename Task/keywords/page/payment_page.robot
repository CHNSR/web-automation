*** Keywords ***
Select cradit card in payment method
    common.Click element when ready    ${payment_locator.cradit_radio}

Click next
    common.Click element when ready    ${payment_locator.next_btn}

Add card number 
    [Arguments]    ${creditcard}    
    common.input text    ${payment_locator.card_number_container}    ${creditcard}

Add expire date     
    [Arguments]    ${exp}    
    common.input text    ${payment_locator.exp_container}    ${exp}

Add cvc 
    [Arguments]    ${cvc}
    common.input text    ${payment_locator.cvc_container}    ${cvc}

Add card holder name  
    [Arguments]    ${name}    
    common.input text    ${payment_locator.holder_name_container}    ${name} 

Click confirm payment
    common.Click element when ready    ${payment_locator.confirm_payment_btn}

Click continue shopping
    common.Click popup when ready    ${payment_locator.continue_to_shoping}
