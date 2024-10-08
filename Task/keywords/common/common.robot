*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open website
    SeleniumLibrary.open browser    ${uat.url}    gc

Click user icon
    SeleniumLibrary.Wait Until Element Is Visible    ${common_locator.user_icon}
    SeleniumLibrary.Click Element    ${common_locator.user_icon}

Open Cart
    SeleniumLibrary.Wait Until Element Is Visible    ${common_locator.user_icon}
    SeleniumLibrary.Click Element    ${common_locator.shopping_cart_icon}

Wait and click 
    [Arguments]    ${waite_path}    ${click_path}
    Wait Until Element Is Visible    ${waite_path}    
    Click Element    ${click_path}

Get last user form yaml
    Evaluate    createUniqueID.get_latest_user_from_yaml()
