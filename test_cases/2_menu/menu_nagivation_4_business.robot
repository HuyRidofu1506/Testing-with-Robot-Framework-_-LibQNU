*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Check Submenu Business Operations In Business Navigation
TC016 - Kiểm tra điều hướng sang "Nghiệp vụ thư viện"
    Check Nagivation Business
    Check Submenu Business Operations

#Check Submenu Business Legal In Business Navigation
TC017 - Kiểm tra điều hướng sang "Văn bản quy phạm pháp luật"
    Check Nagivation Business
    Check Submenu Business Legal
