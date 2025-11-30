*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
Check Submenu Product Service New Book In Product Services Navigation
    Check Nagivation Product Service
    Check Submenu Product Service New Book

Check Submenu Product Service Subject In Product Services Navigation
    Check Nagivation Product Service
    Check Submenu Product Service Subject

Check Submenu Product Service Home Service In Product Services Navigation
    Check Nagivation Product Service
    Check Submenu Product Service Home Service

Check Submenu Product Service Borrow Return In Product Services Navigation
    Check Nagivation Product Service
    Check Submenu Product Service Borrow Return

Check Submenu Product Service Advice Support In Product Services Navigation
    Check Nagivation Product Service
    Check Submenu Product Service Advice Support

Check Submenu Product Service Search In Product Services Navigation
    Check Nagivation Product Service
    Check Submenu Product Service Search

Check Submenu Product Service Training In Product Services NNavigation
    Check Nagivation Product Service
    Check Submenu Product Service Training


