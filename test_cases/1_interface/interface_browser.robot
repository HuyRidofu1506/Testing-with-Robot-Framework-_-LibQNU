*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/interface_keywords.robot
Resource        ../../variables/global_variables.robot


*** Test Cases ***
TC001 - Kiểm tra tương thích trình duyệt
    Open Basic Browser With Chrome
    Open Basic Browser With Firefox
    Open Basic Browser With Edge
    Close Browser Web