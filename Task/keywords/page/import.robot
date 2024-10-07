*** Settings ***
Library    SeleniumLibrary
Library     ${CURDIR}../resources/testdata/createUniqueID.py

Variables    ${CURDIR}../resources/testdata/testdata.yaml
Variables    ${CURDIR}../resources/setting/setting.yaml

Resource    ${CURDIR}../features/login_feature.robot
Resource    ${CURDIR}../features/home_feature.robot
Resource    ${CURDIR}../features/cart_feature.robot
Resource    ${CURDIR}../features/payment_feature.robot
Resource    ${CURDIR}../features/register_feature.robot

#Resource page
Resource    common.robot
Resource    home_page.robot
Resource    user_profile_page.robot
Resource    login_page.robot
Resource    register_page.robot
Resource    payment_page.robot
Resource    cart_page.robot

#Resource locator
Resource    ${CURDIR}../locators/home_path.robot
Resource    ${CURDIR}../locators/cart_path.robot
Resource    ${CURDIR}../locators/commond.robot
Resource    ${CURDIR}../locators/login_path.robot
Resource    ${CURDIR}../locators/pay_path.robot
Resource    ${CURDIR}../locators/register_path.robot
Resource    ${CURDIR}../locators/user_profile_path.robot