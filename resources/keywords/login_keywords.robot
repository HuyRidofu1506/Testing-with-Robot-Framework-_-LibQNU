*** Settings ***
Library     SeleniumLibrary
Resource        ../locators/login_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Resource    ../../config/browser_config.robot


*** Keywords ***
Go To Login Web
    Open Basic Browser
    SeleniumLibrary.Wait Until Element Is Visible    ${LOGIN_URL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LOGIN_URL}

Input CardNum
    [Arguments]     ${data_login_cardnum}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_CARDNUM}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_CARDNUM}    ${data_login_cardnum}
    
Input Pass
    [Arguments]     ${data_login_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_PASSWORD}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_PASSWORD}    ${data_login_password}

Check Username
    SeleniumLibrary.Element Text Should Be    ${LABEL_USERNAME}    ${SHOULD_NAME}
    
Click Login Button
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_LOGIN}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Button    ${BTN_LOGIN}
    Sleep   ${DEFAULT_TIMEOUT}

Get Alert Login
    ${MSG_ALERT_LOGIN}=     SeleniumLibrary.Handle Alert    action=ACCEPT   timeout=2s
    Should Be Equal    ${MSG_ALERT_LOGIN}    ${MSG_ALERT_LOGIN_CONTENT}
    Sleep   ${DEFAULT_TIMEOUT}
