*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
#Library           Screenshot    screenshots    screenshot_module=scrot
Library           Screenshot    screenshots
Library           DateTime

*** Keywords ***
Open nopcommerce
    [Documentation]
    [Arguments]    ${URL}    ${Browser}
    open browser     ${URL}    ${Browser}
    maximize browser window

Login in nopcommerce
    [Arguments]    ${username}  ${password}
    click element    ${Login}
    clear element text    ${txt_email}
    clear element text    ${txt_passwort}
    sleep    5 seconds
    input text    ${txt_email}    ${username}
    input text    ${txt_passwort}    ${password}
    click button    ${btn_Anmelden}

Keyword Screenshot
    #${ctime}    Get Current Date
    #Take Screenshot    ${ctime}.jpg
    #capture page screenshot     ${ctime}TC01.png
    capture page screenshot     allure_TC01.png
    #take screenshot    allure_TC01.png

nopcommerce schliessen
    close browser