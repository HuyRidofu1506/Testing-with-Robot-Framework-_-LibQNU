*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Library    DataDriver   ../../data/dataLogin.xlsx  sheet_name=Sheet1

Suite Setup         Go To Login Web
Suite Teardown      Close Browser Web
Test Template       Login With Invalid Information


*** Variables ***


*** Test Cases ***
Verify Login Fail With Information      ${data_login_cardnum}       ${data_login_password}     ${MSG_ALERT_LOGIN_CONTENT}


*** Keywords ***
Login With Invalid Information
    [Arguments]      ${data_login_cardnum}       ${data_login_password}     ${MSG_ALERT_LOGIN_CONTENT}
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    Get Alert Login     ${MSG_ALERT_LOGIN_CONTENT}