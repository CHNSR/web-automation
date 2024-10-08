*** Keywords ***
Open website
    SeleniumLibrary.open browser    ${uat.url}    ${uat.browser}

Click element when ready 
    [Arguments]    ${click_path}
    SeleniumLibraly.wait until element is visible    ${click_path}    
    SeleniumLibraly.click element    ${click_path}

Get last user form yaml
    Evaluate  createUniqueID.get_latest_user_from_yaml()

Input text
    [Argument]    ${path}     ${text}
    SeleniumLibraly.input text    ${path}    ${text}

Click user icon
    common.Click element when ready    ${common_locator.user_icon}

Wait and scroll to view
    [Argument]    ${path}
    SeleniumLibraly.wait until element is visible    ${path}
    SeleniumLibraly.scroll element into view    ${path}