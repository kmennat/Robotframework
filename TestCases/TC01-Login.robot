*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Variables    ../PageObjects/Locators.py

*** Variables ***
${URL}    https://demo.nopcommerce.com
${Browser}    firefox
${username}    khatt.mennat@googlemail.com
${password}    Deutschland#31

*** Test Cases ***
Login Test
    [Documentation]    My first Test in Robotframework
    [Tags]    LoginInNopCommerce
    [Setup]      Open nopcommerce    ${URL}     ${Browser}
    [Teardown]   Run Keyword If Test Failed    Keyword Screenshot
    Login in nopcommerce    ${username}     ${password}
    ${Var1}    set variable    HelloHelloHello
    log to console    ${Var1}
    sleep    5 seconds
    ${PageTitle}    Get Title
    log    ${PageTitle}
    wait until page contains    Log out
    ${Speed}=    Get Selenium Speed
    Log    ${Speed}







