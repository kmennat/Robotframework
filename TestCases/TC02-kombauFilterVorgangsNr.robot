*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/FilterKeywords.robot
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${URL}    https://kombau-au.dbnetze.com/login
${Browser}    chrome
${username}    user
${password}    test
${VorgangsNr}    20001

*** Test Cases ***
Filter anwenden
    [Documentation]    My first Test in Robotframework Filter anwenden
    [Tags]    KombauFilter
    [Setup]      Open kombau    ${URL}     ${Browser}
    [Teardown]   kombau schliessen
    Login in kombau     ${username}     ${password}
    wait until page contains    Filtereinstellungen
    Filter Vorgangs-Nr   ${VorgangsNr}
    Wochentag
    execute javascript    window.scrollTo(0,1000)
    Filter anwenden
    wait until page contains    20001
    click link    //a[@id="tabs-tab-LAUFWEGE_TREE"]
    click element    xpath=(//th[@class="text--font-muted text--font-small"])[6]
    sleep    10 seconds
    capture page screenshot    D:/Robotframework/Screenshots/TCVorgan.png


