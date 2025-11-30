*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
Check Submenu Introduce History In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce History

Check Submenu Introduce Business In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Business

Check Submenu Introduce Organizational Party In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Organizational Party

Check Submenu Introduce Organizational Official In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Organizational Official

Check Submenu Introduce Organizational Union In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Organizational Union

Check Submenu Introduce Information In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Information

Check Submenu Introduce Library User Resource In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Library User Resource

Check Submenu Introduce Library Book Borrow In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Library Book Borrow

Check Submenu Introduce Library Submit Thesis In Introduce Navigation
    Check Nagivation Introduce
    Check Submenu Introduce Library Submit Thesis