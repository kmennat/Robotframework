*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Register in nopcommerce
     [Arguments]  ${firstname}  ${lastname}  ${email}  ${pwd}  ${pwdConfirm}
     click element   ${RegisterLink}
     select radio button  Gender  M
     #click element  ${RdoBtnGender}
     input text    ${txt_Firstname}    ${firstname}
     input text    ${txt_Lastname}    ${lastname}
     input text    ${txt_emailRg}    ${email}
     select checkbox    ${CheckBxNews}
     input text    ${txt_PwdRegister}    ${pwd}
     input text    ${txt_ConfirmPassword}    ${pwdConfirm}
     click button    ${btn_Register}
     sleep  20 seconds
     page should contain  Your registration completed