*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/RegisterKeywords.robot
Variables    ../PageObjects/Locators.py

*** Variables ***
${URL}    https://demo.nopcommerce.com
${Browser}    firefox
${username}    khattab.men@googlemail.com
${password}    Deutschland#31
${firstname}   Khattab
${lastname}    Mennat
${email}       khattab.men@googlemail.com
${pwd}         Deutschland#31
${pwdConfirm}  Deutschland#31

*** Test Cases ***
Register in nopcommerce
        [Documentation]  TC to register into nopcommerce
        [Tags]    LoginInNopCommerce
        [Setup]      Open nopcommerce    ${URL}     ${Browser}
        [Teardown]   nopcommerce schliessen
        Register in nopcommerce  ${firstname}  ${lastname}  ${email}  ${pwd}  ${pwdConfirm}