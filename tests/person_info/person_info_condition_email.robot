*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../resources/keywords/person_info_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Library     DataDriver   ../../data/data_person_info.xlsx  sheet_name=Sheet4

Test Setup          Go To Login Web
Suite Teardown      Close Browser Web
Test Template       Condition Password Info

*** Test Cases ***
Verify Condition Password Info     ${data_login_cardnum}	${data_login_password}	${email}    ${info_condition_email}     ${info_format_email}


*** Keywords ***
Condition Password Info
    [Arguments]     ${data_login_cardnum}	${data_login_password}	${email}    ${info_condition_email}     ${info_format_email}
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    Go To Personal Information

    Clear Email    ${email}
    Input Email    ${email}

    Click Button Update Info
    Compore Condition Email Info    ${info_condition_email}
    Condition Format Email    ${info_format_email}
