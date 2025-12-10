*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../variables/global_variables.robot
Resource        ../../resources/keywords/menu_keywords.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Check Navigation Contact In Contact Navigation
TC028 - Kiểm tra điều hướng sang "Liên hệ"
    Check Nagivation Contact

