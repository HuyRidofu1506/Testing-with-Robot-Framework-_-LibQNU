*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/search_document_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/search_document_variables.robot


Test Setup          Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Search Traditional Document With Data
TC051 - Tìm kiếm khi không nhập từ khóa
    Click Search Button