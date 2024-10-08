*** Keywords ***
Open website
    SeleniumLibrary.open browser    ${uat.url}    ${uat.browser}

Click element when ready 
    [Arguments]    ${click_path}
    SeleniumLibraly.wait until element is visible    ${click_path}  ${time.waiting_time} 
    SeleniumLibraly.click element    ${click_path}

Get last user form yaml
    Evaluate  createUniqueID.get_latest_user_from_yaml()

Input text 
    [Argument]    ${path}     ${text}
    SeleniumLibraly.Input text    ${path}    ${text}

Click user icon
    common.Click element when ready    ${common_locator.user_icon}

Wait and scroll to view
    [Argument]    ${path}
    SeleniumLibraly.wait until element is visible    ${path}
    SeleniumLibraly.scroll element into view    ${path}

Click popup when ready
    common.Click element when ready     ${common_locator.ok_btn}

Gen new data to register
    Evaluate    createUniqueID.add_new_user_to_yaml()