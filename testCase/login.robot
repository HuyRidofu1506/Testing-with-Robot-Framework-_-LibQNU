*** Settings ***
Library    SeleniumLibrary
Resource        ../config/browser_config.robot
Resource        ../resources/keywords/login_keywords.robot
Resource        ../variables/global_variables.robot
Resource        ../variables/login_variables.robot

Test Setup          Go To Login Web
Suite Teardown      Close Browser Web

*** Variables ***


*** Test Cases ***
Login Without Information
    Click Login Button

Login With Invalid Information CardNum
    Input CardNum    ${VALID_CARDNUM}
    Click Login Button
    Get Alert Login

Login With Invalid Information Password
    Input Pass    ${VALID_PASSWORD}
    Click Login Button
    Get Alert Login

Login With Invalid Information CardNum And Password
    Input CardNum    ${UNVALID_CARDNUM}
    Input Pass    ${UNVALID_PASSWORD}
    Click Login Button
    Get Alert Login

Login With Valid Information
    Input CardNum    ${VALID_CARDNUM}
    Input Pass    ${VALID_PASSWORD}
    Click Login Button
    Check Username