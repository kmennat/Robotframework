*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Variables    ../PageObjects/Locators.py


*** Variables ***
${URL}    https://www.thetestingworld.com
${Browser}    chrome
${username}    Khattab
${password}    Deutschland#31

*** Test Cases ***
Login Test
    [Documentation]    My first Test in Robotframework
    [Tags]    LoginInThetestingworld
    [Setup]      Open thetestingworld    ${URL}     ${Browser}
    [Teardown]   thetestingworld schliessen
    Login in thetestingworld     ${username}     ${password}
    ${PageTitle}    Get Title
    log    ${PageTitle}
    wait until page contains    Profile
    capture page screenshot    D:/Robotframework/Screenshots/TC01.png
    ${Speed}=    Get Selenium Speed
    Log    ${Speed}
    ${LoginValue}=   Get Text    ${LoginValue}
    log    ${LoginValue}





