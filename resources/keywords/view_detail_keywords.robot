*** Settings ***
Library     SeleniumLibrary
Library    String
Resource        ../locators/view_detail_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/view_detail_variables.robot
Resource    ../../config/browser_config.robot

*** Keywords ***
Click 1 Document Digital To View
    SeleniumLibrary.Wait Until Element Is Visible    ${1_DOCUMENT_DIGITAL}      ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${1_DOCUMENT_DIGITAL}
    
Check Title Form View Detail Digital Document
    SeleniumLibrary.Wait Until Element Is Visible    ${TITLE_FORM_VIEW_DOCUMENT_DIGITAL}    ${DEFAULT_TIMEOUT}

Click Login Button To View Detail
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_LOGIN_VIEW}  ${DEFAULT_TIMEOUT} 
    SeleniumLibrary.Click Element    ${BTN_LOGIN_VIEW}
    
View Detail In Document Digital
    SeleniumLibrary.Wait Until Element Is Visible    ${VIEW_DETAIL_DOCUMENT}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${VIEW_DETAIL_DOCUMENT}
    Sleep    ${DEFAULT_TIMEOUT}



