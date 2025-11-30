*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
Check Submenu Search Traditional In Search Navigation
    Check Nagivation Search
    Check Submenu Search Traditional

Check Submenu Search Digital In Search Navigation
    Check Nagivation Search
    Check Submenu Search Digital


