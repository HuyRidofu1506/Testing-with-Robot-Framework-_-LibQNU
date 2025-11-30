*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Library    DataDriver   ../../data/dataLogin.xlsx  sheet_name=Sheet2

Suite Setup         Go To Login Web
Suite Teardown      Close Browser Web
Test Template       Login With Valid Information


*** Variables ***


*** Test Cases ***
Verify Login Success With Information      ${data_login_cardnum}       ${data_login_password}       ${patron_name}


*** Keywords ***
Login With Valid Information
    [Arguments]      ${data_login_cardnum}       ${data_login_password}     ${patron_name}
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    Check Username      ${patron_name}
    Click Logout Button