*** Keywords ***
Input email
    [Arguments]    ${email}    
    common.Input text    ${register_locator.username_container}    ${email}

Input password
    [Arguments]    ${password}    
    common.Input text    ${register_locator.password_container}    ${password}

Input confirm password
    [Arguments]    ${cf_password}
    common.Input text    ${register_locator.confirm_password_container}    ${cf_password}

Click register button
    Click Element   ${register_locator.submit_btn}
    common.Click element when ready    ${register_locator.ok_btn}    ${register_locator.ok_btn}

Gen new data to register
    Evaluate    createUniqueID.add_new_user_to_yaml()