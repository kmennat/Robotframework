*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/FilterKeywords.robot
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${URL}    https://kombau-au.dbnetze.com/login
${Browser}    chrome
${username}    user
${password}    test

*** Test Cases ***
Filter anwenden
    [Documentation]    My first Test in Robotframework Filter anwenden
    [Tags]    KombauFilter
    [Setup]      Open kombau    ${URL}     ${Browser}
    [Teardown]   kombau schliessen
    Login in kombau     ${username}     ${password}
    wait until page contains    Filtereinstellungen
    Filter anwenden
    wait until page contains    Betroffene Züge