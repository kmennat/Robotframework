*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open kombau
    [Documentation]
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

Click Logo
    click element  //img[@id="logo"]
    ${Status}    Run Keyword And Return Status    Wait Until Element is Visible    //button[@id="closeFilterPanel"]    5
    Run Keyword Unless    ${Status}    Wait And Click    //img[@id="logo"]
    LOG    ${Status}
kombau schliessen
    close browser