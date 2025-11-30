*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
Check Submenu News Actitives In News Navigation
    Check Nagivation News
    Check Submenu News Activities

Check Submenu News Actitives In News Navigation
    Check Nagivation News
    Check Submenu News Notifications

Check Submenu News Actitives In News Navigation
    Check Nagivation News
    Check Submenu News Videos





