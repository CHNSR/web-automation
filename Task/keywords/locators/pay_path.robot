*** Variables ***
${payment_locator.next_btn}    //button/span[text()='Next']
${payment_locator.cradit_radio}    //span[text()='Credit Card']
${payment_locator.card_number_container}    xpath=//input[@placeholder='Valid Card Number']
${payment_locator.exp_container}    xpath=//input[@placeholder='MM/YYYY']
${payment_locator.cvc_container}    xpath=//input[@placeholder='CVC']
${payment_locator.holder_name_container}    xpath=//input[@placeholder='Card Owner Name'] 
${payment_locator.confirm_payment_btn}    xpath=//button[span[text()='Confirm Payment']]
${payment_locator.ok_btn}    //button[span[text()='OK']]
${payment_locator.div_of_orderdetail}    //div[@class='success-description']
${payment_locator.continue_to_shoping}    //button/span[text()='Continue Shopping']