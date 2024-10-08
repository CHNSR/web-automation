*** Keywords ***
Open website
    SeleniumLibrary.open browser    ${uat.url}    ${browser}

Click user icon
    SeleniumLibrary.Wait Until Element Is Visible    ${common_locator.user_icon}
    SeleniumLibrary.Click Element    ${common_locator.user_icon}

Open cart
    SeleniumLibrary.Wait Until Element Is Visible    ${common_locator.user_icon}
    SeleniumLibrary.Click Element    ${common_locator.shopping_cart_icon}

Wait and click 
    [Arguments]    ${click_path}
    Wait Until Element Is Visible    ${click_path}    
    Click Element    ${click_path}

Get last user form yaml
    Evaluate    createUniqueID.get_latest_user_from_yaml()

Input text
    [Argument]    ${path}     ${text}
    SeleniumLibraly.input text    ${path}    ${text}