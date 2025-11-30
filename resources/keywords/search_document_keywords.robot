*** Settings ***
Library     SeleniumLibrary
Library    String
Resource        ../locators/search_document_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/search_document_variables.robot
Resource    ../../config/browser_config.robot

*** Keywords ***
Input Keyword In Search Box
    [Arguments]     ${data_keyword_search}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_SEARCH_BOX}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_SEARCH_BOX}    ${data_keyword_search}
    
Click Search Button
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_SEARCH}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${BTN_SEARCH}
    Sleep    ${DEFAULT_TIMEOUT}
    
Choose Radio Button Traditional
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_RADIO_TRADITIONAL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${BTN_RADIO_TRADITIONAL}

Choose Radio Button Digital
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_RADIO_DIGITAL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${BTN_RADIO_DIGITAL}




