*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../variables/global_variables.robot
Resource        ../../resources/keywords/menu_keywords.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Check Submenu Help Q&A In Help Navigation
TC025 - Kiểm tra điều hướng sang "Câu hỏi thường gặp"
    Check Nagivation Help
    Check Submenu Help Q&A

#Check Submenu Help Usage Instructions In Help NNavigation
TC026 - Kiểm tra điều hướng sang "Hướng dẫn sử dụng thư viện"
    Check Nagivation Help
    Check Submenu Help Usage Instructions

#Check Submenu Help Library Layout In Help Navigation
TC027 - Kiểm tra điều hướng sang "Sơ đồ thư viện"
    Check Nagivation Help
    Check Submenu Help Library Layout



