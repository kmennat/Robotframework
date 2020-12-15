*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Variables    ../PageObjects/Locators.py


*** Variables ***
${URL}    https://kombau-au.dbnetze.com/login
${Browser}    chrome
${username}    user
${password}    test



*** Test Cases ***
Login Test
    [Tags]    KombauLogin
    [Setup]      Open kombau    ${URL}     ${Browser}
    [Teardown]   kombau schliessen
    Given Login in kombau     ${username}     ${password}
    ${PageTitle}    Get Title
    log    ${PageTitle}
    Then wait until page contains    Kooooo
    And capture page screenshot    D:/Robotframework/Screenshots/TC01.png
    ${Speed}=    Get Selenium Speed
    Log    ${Speed}
    ${FilterEinstellungValue}=   Get Text    ${FilterEinstellung}
    log    ${FilterEinstellungValue}




