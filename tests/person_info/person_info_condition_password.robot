*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../resources/keywords/person_info_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Library     DataDriver   ../../data/data_person_info.xlsx  sheet_name=Sheet3

Test Setup          Go To Login Web
Suite Teardown      Close Browser Web
Test Template       Condition Password Info

*** Test Cases ***
Verify Condition Password Info     ${data_login_cardnum}	${data_login_password}	${email}    ${password}     ${password_confirm}     ${info_condition_email}     ${info_condition_password}      ${info_condition_pw_confirm}        ${info_compore_password}


*** Keywords ***
Condition Password Info
    [Arguments]     ${data_login_cardnum}	${data_login_password}	${email}    ${password}     ${password_confirm}     ${info_condition_email}     ${info_condition_password}      ${info_condition_pw_confirm}        ${info_compore_password}
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    Go To Personal Information

    Select Checkbox Change Password
    Clear Email    ${email}
    Input Email    ${email}
    Input Password Info    ${password}
    Input Password Info Confirm    ${password_confirm}

    Click Button Update Info
    Compore Condition Email Info    ${info_condition_email}
    Compore Condition Password Info    ${info_condition_password}
    Compore Condition Password Confirm Info    ${info_condition_pw_confirm}
    Condition Two Password    ${info_compore_password}
