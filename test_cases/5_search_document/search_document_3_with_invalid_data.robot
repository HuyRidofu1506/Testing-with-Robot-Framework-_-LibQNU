*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/search_document_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/search_document_variables.robot
Library     DataDriver   ../../data/data_search.xlsx  sheet_name=Sheet3

Test Setup          Open Basic Browser With Chrome
Suite Teardown      Close Browser Web
Test Template       Search Traditional Document Template

*** Test Cases ***
Search Traditional Document With Data       ${data_keyword_search}

*** Keywords ***
Search Traditional Document Template
    [Arguments]     ${data_keyword_search}
    Input Keyword In Search Box    ${data_keyword_search}
    Choose Radio Button Traditional
    Click Search Button