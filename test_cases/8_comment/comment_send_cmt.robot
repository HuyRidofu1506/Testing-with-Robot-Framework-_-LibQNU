*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/comment_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/comment_variables.robot
Library     DataDriver   ../../data/data_comment.xlsx  sheet_name=Sheet1

Test Setup          Go To Comment Web
Suite Teardown      Close Browser Web
Test Template       Send Comment


*** Test Cases ***
Send Comment To Lib_QNU With Information    ${data_cmt_name}    ${data_cmt_cardNum}   ${data_cmt_email}     ${data_cmt_title}       ${data_cmt_content}     ${msg_alert_cmt_content}


*** Keywords ***
Send Comment
    [Arguments]     ${data_cmt_name}    ${data_cmt_cardNum}   ${data_cmt_email}     ${data_cmt_title}       ${data_cmt_content}     ${msg_alert_cmt_content}
    Input Name          ${data_cmt_name}
    Input CardNum       ${data_cmt_cardNum}
    Input Email         ${data_cmt_email}
    Input Title         ${data_cmt_title}
    Input Content       ${data_cmt_content}
    Click Send Button
    Get Alert Comment   ${msg_alert_cmt_content}


