*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/comment_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/comment_variables.robot
Library     DataDriver   ../../data/data_comment.xlsx  sheet_name=Sheet2

Test Setup          Go To Comment Web
Suite Teardown      Close Browser Web
Test Template       Conditional for Sending Comment To Lib_QNU


*** Test Cases ***
Conditional for Sending Comment To Lib_QNU Without Information      ${cmt_condition_name}       ${cmt_condtion_email}       ${cmt_condition_content}


*** Keywords ***
Conditional for Sending Comment To Lib_QNU
    [Arguments]     ${cmt_condition_name}       ${cmt_condtion_email}       ${cmt_condition_content}
    Click Send Button
    Compore Condition Name      ${cmt_condition_name}
    Compore Condition Email     ${cmt_condtion_email}
    Compore Condition Content   ${cmt_condition_content}

