*** Settings ***
Resource    ${CURDIR}../keywords/page/import.robot
Test Setup     common.Open websites    
Test Teardown   SeleniumLibrary.close browser

*** Test Cases ***
Test Register 
    [Tags]    test_1
    register_page.Gen new data to register
    ${Userdata}=    common.get_latest_user_from_yaml    
    register_feature.Register    ${Userdata.username}    ${Userdata.password}    ${Userdata.confirmpassword} 
    user_profile_page.Log out

Test Log in
    [Tags]    test_2
    &{lastuser}    Evaluate    createUniqueID.get_latest_user_from_yaml()          
    login_feature.Login    ${lastuser.username}    ${lastuser.password]}
    home_feature.Search and add product to cart    ${searchtxt.searchtxt_1}    ${product.product_1}
    cart_feature.Purchase product
    ...    ${lastuser.name}    
    ...    ${lastuser.surname}    
    ...    ${lastuser.address}    
    ...    ${lastuser.phoneNum}    
    ...    ${lastuser.email}  
    payment_feature.Add credit card and payment 
    ...    ${cradit_card.cardNum}    
    ...    ${cradit_card.date}    
    ...    ${cradit_card.cvc}    
    ...    ${cradit_card.nameOnCard}    
    home_feature.Show order id in console
    