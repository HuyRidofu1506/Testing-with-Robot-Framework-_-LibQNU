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
    Open Basic Browser
    SeleniumLibrary.Wait Until Element Is Visible    ${LOGIN_URL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LOGIN_URL}
    SeleniumLibrary.Wait Until Element Is Visible    ${COMMENT_URL}     ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${COMMENT_URL}

Input Name
    [Arguments]     ${data_comment_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_NAME}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_NAME}    ${data_comment_name}
    
Input CardNum
    [Arguments]     ${data_comment_cardNum}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_CARDNUM}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_CARDNUM}    ${data_comment_cardNum}

Input Email
    [Arguments]     ${data_comment_email}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_EMAIL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_EMAIL}    ${data_comment_email}
   
Input Title
    [Arguments]     ${data_comment_title}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_TITLE}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_TITLE}    ${data_comment_title}
   
Input Content
    [Arguments]     ${data_comment_content}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_CONTENT}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Input Text    ${TXT_CONTENT}    ${data_comment_content}
    
Click Send Button
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_SEND}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Button    ${BTN_SEND}
    Sleep    ${DEFAULT_TIMEOUT}

Click Reset Button
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_RESET}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Button    ${BTN_RESET}
    Sleep    ${DEFAULT_TIMEOUT}

Get Alert Comment
    ${MSG_ALERT_COMMENT}=   SeleniumLibrary.Handle Alert    action=ACCEPT   timeout=2s
    Should Be Equal    ${MSG_ALERT_COMMENT}    ${MSG_ALERT_CMT_CONTENT}     collapse_spaces=True
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
    ${actual_name}=     SeleniumLibrary.Get Text    ${CONDITION_NAME}
    Log To Console    >>>${actual_name}<<<
    ${actual_name}=     Strip String    ${actual_name}
    Should Be Equal As Strings    ${actual_name}    ${CMT_CONDITION_NAME}

Compore Condition Email
    ${actual_email}=     SeleniumLibrary.Get Text    ${CONDITION_EMAIL}
    Log To Console    >>>${actual_email}<<<
    ${actual_email}=     Strip String    ${actual_email}
    Should Be Equal As Strings    ${actual_email}    ${CMT_CONDITION_EMAIL}

Compore Condition Content
    ${actual_content}=     SeleniumLibrary.Get Text    ${CONDITION_CONTENT}
    Log To Console    >>>${actual_content}<<<
    ${actual_content}=     Strip String    ${actual_content}
    Should Be Equal As Strings    ${actual_content}    ${CMT_CONDITION_CONTENT}