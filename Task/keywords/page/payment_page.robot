
*** Keywords ***
Select payment method
    Click Element    ${payment_locator.cradite_radio}
    SeleniumLibrary.Click Element    ${payment_locator.next_btn}

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
    common.Wait and click    ${payment_locator.confirm_payment_btn}
    common.Wait and click    ${payment_locator.ok_btn}    

Click continue shopping
    SeleniumLibrary.Wait until element is visible    ${payment_locator.div_of_orderdetail}
    ${Get order information}=    Get Text    ${payment_locator.div_of_orderdetail}
    Click Element    ${payment_locator.continue_to_shoping}
    Log To Console    ${Get order information}