*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/login_keywords.robot
Resource        ../../resources/keywords/person_info_keywords.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Library     DataDriver   ../../data/data_person_info.xlsx  sheet_name=Sheet5

Test Setup          Go To Login Web
Suite Teardown      Close Browser Web
Test Template       Change Data Person Info

*** Test Cases ***
Verify Change Data Person Info With Password     ${data_login_cardnum}	${data_login_password}	${education}	${phone}	${industry_group}	${mobile}	${office_address}	${email}	${permanent_address}    ${password}     ${password_confirm}


*** Keywords ***
Change Data Person Info
    [Arguments]     ${data_login_cardnum}	${data_login_password}	${education}	${phone}	${industry_group}	${mobile}	${office_address}	${email}	${permanent_address}    ${password}     ${password_confirm}
    Input CardNum    ${data_login_cardnum}
    Input Pass       ${data_login_password}
    Click Login Button
    Go To Personal Information
    Select Dropdow Education    ${education}
    Input Phone    ${phone}
    Select Dropdown Industry Group    ${industry_group}
    Input Mobile    ${mobile}
    Select Checkbox Change Password
    Input Password Info    ${password}
    Input Password Info Confirm    ${password_confirm}
    Input Office Address    ${office_address}
    Input Email    ${email}
    Input Permanent Address    ${permanent_address}
    Click Button Reset Info