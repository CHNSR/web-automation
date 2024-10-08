*** Settings ***
Library    SeleniumLibrary
Library    ${CURDIR}/../resources/testdata/createUniqueID.py

Variables  ${CURDIR}/../resources/testdata/testdata.yaml
Variables  ${CURDIR}/../resources/setting/setting.yaml

# Resource features
Resource   ${CURDIR}/../keywords/features/login_feature.robot
Resource   ${CURDIR}/../keywords/features/home_feature.robot
Resource   ${CURDIR}/../keywords/features/cart_feature.robot
Resource   ${CURDIR}/../keywords/features/payment_feature.robot
Resource   ${CURDIR}/../keywords/features/register_feature.robot

# Resource page
Resource   ${CURDIR}/../keywords/common/common.robot
Resource   ${CURDIR}/../keywords/page/home_page.robot
Resource   ${CURDIR}/../keywords/page/user_profile_page.robot
Resource   ${CURDIR}/../keywords/page/login_page.robot
Resource   ${CURDIR}/../keywords/page/register_page.robot
Resource   ${CURDIR}/../keywords/page/payment_page.robot
Resource   ${CURDIR}/../keywords/page/cart_page.robot

# Resource locator
Resource   ${CURDIR}/../keywords/locators/home_path.robot
Resource   ${CURDIR}/../keywords/locators/cart_path.robot
Resource   ${CURDIR}/../keywords/locators/common.robot
Resource   ${CURDIR}/../keywords/locators/login_path.robot
Resource   ${CURDIR}/../keywords/locators/pay_path.robot
Resource   ${CURDIR}/../keywords/locators/register_path.robot
Resource   ${CURDIR}/../keywords/locators/user_profile_path.robot
