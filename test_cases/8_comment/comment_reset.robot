*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/comment_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/comment_variables.robot
Library     DataDriver   ../../data/data_comment.xlsx  sheet_name=Sheet1


Test Setup          Go To Comment Web
Suite Teardown      Close Browser Web
Test Template       Reset Comment


*** Test Cases ***
Reset Comment With Data     ${data_cmt_name}    ${data_cmt_cardNum}   ${data_cmt_email}     ${data_cmt_title}       ${data_cmt_content}


*** Keywords ***
Reset Comment
    [Arguments]     ${data_cmt_name}    ${data_cmt_cardNum}   ${data_cmt_email}     ${data_cmt_title}       ${data_cmt_content}
    Input Name          ${data_cmt_name}
    Input CardNum       ${data_cmt_cardNum}
    Input Email         ${data_cmt_email}
    Input Title         ${data_cmt_title}
    Input Content       ${data_cmt_content}
    Click Reset Button
    Compore Text Name
    Compore Text CardNum
    Compore Text Email
    Compore Text Title
    Compore Text Content  #vẫn không clear được phần này

