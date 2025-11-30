*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../variables/global_variables.robot
Resource        ../../resources/keywords/menu_keywords.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
Check Submenu Help Q&A In Help Navigation
    Check Nagivation Help
    Check Submenu Help Q&A

Check Submenu Help Usage Instructions In Help NNavigation
    Check Nagivation Help
    Check Submenu Help Usage Instructions

Check Submenu Help Library Layout In Help Navigation
    Check Nagivation Help
    Check Submenu Help Library Layout



