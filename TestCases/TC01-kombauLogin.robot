*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${URL}    https://kombau-au.dbnetze.com/login
${Browser}    chrome
${username}    user
${password}    test

*** Test Cases ***
Login Test
    Open kombau    ${URL}     ${Browser}
    Login in kombau     ${username}     ${password}
    kombau schliessen
