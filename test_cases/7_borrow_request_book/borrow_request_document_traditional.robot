*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/borrow_request_book_keywords.robot
Resource        ../../resources/keywords/search_document_keywords.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/borrow_request_book_variables.robot
Library     DataDriver   ../../data/data_borrow_request.xlsx  sheet_name=Sheet1

Test Setup          Go To Login Web
Suite Teardown      Close Browser Web
Test Template       View Document Traditional Template

*** Test Cases ***
View Document Traditional   ${data_login_cardnum}       ${data_login_password}      ${data_keyword_search}      ${data_dkcb}        ${data_vaild_date}

*** Keywords ***
View Document Traditional Template
    [Arguments]     ${data_login_cardnum}       ${data_login_password}      ${data_keyword_search}      ${data_dkcb}        ${data_vaild_date}
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    Click Home Page
    Input Keyword In Search Box    ${data_keyword_search}
    Choose Radio Button Traditional
    Click Search Button
    Click 1 Document Traditional To View
    Check Title Form View Detail Traditional Document
    Input DKCB Number To Borrow Request    ${data_dkcb}
    Input Valid Date To Borrow Request    ${data_vaild_date}
    Click Reser Button To Borrow Request

