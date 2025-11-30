*** Settings ***
Library     SeleniumLibrary
Library    String
Resource        ../locators/comment_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/comment_variables.robot
Resource        ../locators/login_locators.robot
Resource    ../../config/browser_config.robot


*** Keywords ***
Go To Comment Web
    Open Basic Browser With Chrome
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_WEB_LOGIN}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${BTN_WEB_LOGIN}
    SeleniumLibrary.Wait Until Element Is Visible    ${COMMENT_URL}     ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${COMMENT_URL}

Input Name
    [Arguments]     ${data_cmt_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_NAME}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_NAME}    ${data_cmt_name}
    
Input CardNum
    [Arguments]     ${data_cmt_cardNum}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_CARDNUM}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_CARDNUM}    ${data_cmt_cardNum}

Input Email
    [Arguments]     ${data_cmt_email}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_EMAIL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_EMAIL}    ${data_cmt_email}
   
Input Title
    [Arguments]     ${data_cmt_title}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_TITLE}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_TITLE}    ${data_cmt_title}
   
Input Content
    [Arguments]     ${data_cmt_content}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_CONTENT}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_CONTENT}    ${data_cmt_content}
    
Click Send Button
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_SEND}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Button    ${BTN_SEND}
    Sleep    ${DEFAULT_TIMEOUT}

Click Reset Button
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_RESET}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Button    ${BTN_RESET}
    Sleep    ${DEFAULT_TIMEOUT}

Get Alert Comment
    [Arguments]     ${msg_alert_cmt_conten}
    ${MSG_ALERT_COMMENT}=   SeleniumLibrary.Handle Alert    action=ACCEPT   timeout=2s
    Should Be Equal    ${MSG_ALERT_COMMENT}    ${msg_alert_cmt_conten}     collapse_spaces=True
    Sleep    ${DEFAULT_TIMEOUT}

Compore Text Name
    ${compore_txt_name}=    SeleniumLibrary.Get Text    ${TXT_NAME}
    Should Be Equal As Strings    ${compore_txt_name}    ${EMPTY}

Compore Text CardNum
    ${compore_txt_cardNum}=    SeleniumLibrary.Get Text    ${TXT_CARDNUM}
    Should Be Equal As Strings    ${compore_txt_cardNum}    ${EMPTY}

Compore Text Email
    ${compore_txt_email}=    SeleniumLibrary.Get Text    ${TXT_EMAIL}
    Should Be Equal As Strings    ${compore_txt_email}    ${EMPTY}

Compore Text Title
    ${compore_txt_title}=    SeleniumLibrary.Get Text    ${TXT_TITLE}
    Should Be Equal As Strings    ${compore_txt_title}    ${EMPTY}

Compore Text Content    #vẫn không clear được phần này
    Sleep    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Clear Element Text    ${TXT_CONTENT}
    ${compore_txt_content}=    SeleniumLibrary.Get Text    ${TXT_CONTENT}
    Should Be Equal    ${compore_txt_content}    ${EMPTY}
#    Should Be Equal As Strings    ${compore_txt_content}    ${EMPTY}

Compore Condition Name
    [Arguments]     ${cmt_condition_name}
    ${actual_cmt_name}=     SeleniumLibrary.Get Text    ${CONDITION_NAME}
    Log To Console    >>>${actual_cmt_name}<<<
    ${actual_cmt_name}=     Strip String    ${actual_cmt_name}
    Should Be Equal As Strings    ${actual_cmt_name}    ${cmt_condition_name}

Compore Condition Email
    [Arguments]     ${cmt_condtion_email}
    ${actual_cmt_email}=     SeleniumLibrary.Get Text    ${CONDITION_EMAIL}
    Log To Console    >>>${actual_cmt_email}<<<
    ${actual_cmt_email}=     Strip String    ${actual_cmt_email}
    Should Be Equal As Strings    ${actual_cmt_email}    ${cmt_condtion_email}

Compore Condition Content
    [Arguments]     ${cmt_condition_content}
    ${actual_cmt_content}=     SeleniumLibrary.Get Text    ${CONDITION_CONTENT}
    Log To Console    >>>${actual_cmt_content}<<<
    ${actual_cmt_content}=     Strip String    ${actual_cmt_content}
    Should Be Equal As Strings    ${actual_cmt_content}    ${cmt_condition_content}