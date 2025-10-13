*** Settings ***
Library     SeleniumLibrary
Resource       ../variables/global_variables.robot
Resource       ../variables/login_variables.robot


*** Keywords ***
Open Basic Browser
    SeleniumLibrary.Open Browser    ${BASE_URL}     ${BROWSER}
    SeleniumLibrary.Maximize Browser Window

Close Browser Web
    SeleniumLibrary.Close All Browsers