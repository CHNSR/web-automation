

*** Keywords ***
Fill email
    [Arguments]    ${email}
    common.input text  ${login_locator.email_container}    ${email}

Fill password  
    [Arguments]    ${password}  
    common.input text    ${login_locator.password_container}    ${password}

Click login button
    common.Wait and click    ${login_locator.log_in_btn} 

Click sign up button 
    common.Wait and click    ${login_locator.sign_up_btn}    ${login_locator.sign_up_btn}