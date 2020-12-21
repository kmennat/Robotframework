*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Filter anwenden
    click button     ${Btn_Filteranwenden}
    click element    ${BM_Tab}

Filter Vorgangs-Nr
    [Arguments]    ${VorgangsNr}
    input text    ${txt_VorgangsNr}    ${VorgangsNr}

Wochentag
    click element    ${Samstag}
    click element    ${Sonntag}