*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/view_detail_keywords.robot
Resource        ../../resources/keywords/search_document_keywords.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/view_detail_variables.robot
Library     DataDriver   ../../data/data_view_detail_document.xlsx  sheet_name=Sheet1

Test Setup          Open Basic Browser With Chrome
Suite Teardown      Close Browser Web
Test Template       View Document Digital Template

*** Test Cases ***
View Document Digital   ${data_keyword_search}      ${data_login_cardnum}       ${data_login_password}

*** Keywords ***
View Document Digital Template
    [Arguments]     ${data_keyword_search}      ${data_login_cardnum}       ${data_login_password}
    Input Keyword In Search Box    ${data_keyword_search}
    Choose Radio Button Digital
    Click Search Button
    Click 1 Document Digital To View
    Check Title Form View Detail Digital Document
    Click Login Button To View Detail
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    View Detail In Document Digital



