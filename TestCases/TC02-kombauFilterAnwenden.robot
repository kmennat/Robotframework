*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${URL}    https://kombau-au.dbnetze.com/login
${Browser}    chrome
${username}    user
${password}    test

*** Test Cases ***
Filter anwenden
    [Tags]    KombauFilter
    [Setup]      Open kombau    ${URL}     ${Browser}
    [Teardown]   kombau schliessen
    Login in kombau     ${username}     ${password}
    wait until page contains    Filtereinstellungen
    capture page screenshot    D:/Robotframework/Screenshots/TC02.png