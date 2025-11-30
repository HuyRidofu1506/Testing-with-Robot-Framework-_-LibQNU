*** Settings ***
Library     SeleniumLibrary
Resource        ../locators/interface_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/interface_variables.robot
Resource    ../../config/browser_config.robot


*** Keywords ***
#HOME
Check Logo Home
    SeleniumLibrary.Wait Until Element Is Visible    ${LOGO_HOME}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LOGO_HOME}
    Sleep    ${DEFAULT_TIMEOUT}

Check Nagivation Home
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_HOME}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_HOME}
    Sleep    ${DEFAULT_TIMEOUT}

#INTRODUCE
Check Nagivation Introduce
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_INTRODUCE}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_INTRODUCE}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

#NEWS
Check Nagivation News
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_NEWS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_NEWS}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Nagivation Doc Search
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_DOC_SEARCH}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_DOC_SEARCH}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Nagivation Business
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_BUSINESS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_BUSINESS}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Nagivation Product Service
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_PROD_SERV}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_PROD_SERV}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Nagivation Help
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_HELP}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_HELP}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Nagivation Contact
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_CONTACT}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_CONTACT}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Nagivation Login
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_LOGIN}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_LOGIN}
    Sleep    ${DEFAULT_TIMEOUT}
    Back

Check Box Search
    SeleniumLibrary.Wait Until Element Is Visible    ${BOX_SEARCH}   ${DEFAULT_TIMEOUT}
    Sleep    ${DEFAULT_TIMEOUT}

Check Button Search
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_SEARCH}   ${DEFAULT_TIMEOUT}
    Sleep    ${DEFAULT_TIMEOUT}

Check Button Language VN
    SeleniumLibrary.Wait Until Element Is Visible    ${LANGUAGE_VN}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LANGUAGE_VN}
    Sleep    ${DEFAULT_TIMEOUT}

Check Button Language ENG
    SeleniumLibrary.Wait Until Element Is Visible    ${LANGUAGE_ENG}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LANGUAGE_ENG}
    Sleep    ${DEFAULT_TIMEOUT}
