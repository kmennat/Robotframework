*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open kombau
    [Arguments]    ${URL}    ${Browser}
    open browser     ${URL}    ${Browser}
    maximize browser window

Login in kombau
    [Arguments]    ${username}  ${password}
    input text    ${txt_username}    ${username}
    input text    ${txt_passwort}    ${password}
    click button    ${btn_Anmelden}

Check Login
    ${FilterEinstellungValue}=    Get Value    FilterEinstellung
    log    ${FilterEinstellungValue}

kombau schliessen
    close browser