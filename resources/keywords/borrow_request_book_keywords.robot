*** Settings ***
Library     SeleniumLibrary
Library    String
Resource        ../locators/borrow_request_book_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/borrow_request_book_variables.robot
Resource    ../../config/browser_config.robot

*** Keywords ***
Click 1 Document Traditional To View
    SeleniumLibrary.Wait Until Element Is Visible    ${1_DOCUMENT_TRADITIONAL}      ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${1_DOCUMENT_TRADITIONAL}

Check Title Form View Detail Traditional Document
    SeleniumLibrary.Wait Until Element Is Visible    ${TITLE_FORM_VIEW_DOCUMENT_TRADITIONAL}    ${DEFAULT_TIMEOUT}

Input DKCB Number To Borrow Request
    [Arguments]     ${data_dkcb}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_DKCB}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_DKCB}    ${data_dkcb}
    
Input Valid Date To Borrow Request
    [Arguments]     ${data_vaild_date}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_VALID_DATE}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_VALID_DATE}    ${data_vaild_date}

Click Reser Button To Borrow Request
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_RESER}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${BTN_RESER}




