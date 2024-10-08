*** Keywords ***
Open website
    SeleniumLibrary.open browser    ${uat.url}    ${uat.browser}

Wait and click 
    [Arguments]    ${click_path}
    SeleniumLibraly.wait until element is visible    ${click_path}    
    SeleniumLibraly.click element    ${click_path}

Get last user form yaml
    SeleniumLibraly.evaluate    createUniqueID.get_latest_user_from_yaml()

Input text
    [Argument]    ${path}     ${text}
    SeleniumLibraly.input text    ${path}    ${text}

Click user icon
    common.Wait and click    ${common_locator.user_icon}

Wait and scroll to view
    [Argument]    ${path}
    SeleniumLibraly.wait until element is visible    ${path}
    SeleniumLibraly.scroll element into view    ${path}