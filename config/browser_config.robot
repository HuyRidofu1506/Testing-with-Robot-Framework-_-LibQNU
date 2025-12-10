*** Settings ***
Library     SeleniumLibrary
Resource       ../variables/global_variables.robot
Resource       ../variables/login_variables.robot
Resource        ../resources/locators/interface_locators.robot


*** Keywords ***
Open Basic Browser With Chrome
    SeleniumLibrary.Open Browser    ${BASE_URL}     ${BROWSER_CHROME}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Visible       ${NAGIVATION_HOME}      ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_HOME}

Open Basic Browser With Firefox
    SeleniumLibrary.Open Browser    ${BASE_URL}     ${BROWSER_FIREFOX}
    SeleniumLibrary.Maximize Browser Window

Open Basic Browser With Edge
    SeleniumLibrary.Open Browser    ${BASE_URL}     ${BROWSER_EDGE}
    SeleniumLibrary.Maximize Browser Window

Close Browser Web
    SeleniumLibrary.Close All Browsers

Back
    SeleniumLibrary.Go Back

Click Home Page
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_HOME}     ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_HOME}

