*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Filter anwenden
    click button     ${Btn_Filteranwenden}
    click element    ${BM_Tab}
    click element    ${AnzahlBetrfZuege}
