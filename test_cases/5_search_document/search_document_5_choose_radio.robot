*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/search_document_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/search_document_variables.robot


Test Setup          Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Choose Radio Button
TC052 - Kiểm tra radio chọn loại tìm kiếm
    Choose Radio Button Digital
    Choose Radio Button Traditional