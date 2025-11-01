*** Settings ***
Library     SeleniumLibrary
Library    String
Resource        ../locators/login_locators.robot
Resource        ../locators/person_info_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/login_variables.robot
Resource        ../../variables/person_info_variables.robot
Resource    ../../config/browser_config.robot

*** Keywords ***
Go To Personal Information
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_INFO}
    SeleniumLibrary.Click Element    ${BTN_INFO}

#Check Information
#    [Arguments]     ${card_num}     ${patron_name}
#    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_CARDNUM_INFO}
#    Should Be Equal    ${TXT_CARDNUM_INFO}    ${card_num}
#    SeleniumLibrary.Wait Until Element Is Visible    ${patron_name}
#    Should Be Equal    ${TXT_NAME_INFO}    ${patron_name}
    
Select Dropdow Education
    [Arguments]     ${education}
    SeleniumLibrary.Wait Until Element Is Visible    ${SELECT_EDUCATION}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SELECT_EDUCATION}
    SeleniumLibrary.Select From List By Label    ${SELECT_EDUCATION}    ${education}

Input Phone
    [Arguments]     ${phone}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_PHONE_INFO}
    SeleniumLibrary.Input Text    ${TXT_PHONE_INFO}    ${phone}

Select Dropdown Industry Group
    [Arguments]     ${industry_group}
    SeleniumLibrary.Wait Until Element Is Visible    ${DROPDOWN_INDUSTRY_GROUP}
    SeleniumLibrary.Select From List By Label    ${DROPDOWN_INDUSTRY_GROUP}    ${industry_group}

Input Mobile
    [Arguments]     ${mobile}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_MOBILE_INFO}
    SeleniumLibrary.Input Text    ${TXT_MOBILE_INFO}    ${mobile}

Input Office Address
    [Arguments]     ${office_address}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_OFFICE_ADDRESS_INFO}
    SeleniumLibrary.Input Text    ${TXT_OFFICE_ADDRESS_INFO}    ${office_address}

Input Email
    [Arguments]     ${email}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_EMAIL_INFO}
    SeleniumLibrary.Input Text    ${TXT_EMAIL_INFO}    ${email}

Input Permanent Address
    [Arguments]     ${permanent_address}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_PERMANENT_ADDRESS_INFO}
    SeleniumLibrary.Input Text    ${TXT_PERMANENT_ADDRESS_INFO}    ${permanent_address}

Select Checkbox Change Password
    SeleniumLibrary.Wait Until Element Is Visible    ${CHECKBOX_CHANGEPASS}
    SeleniumLibrary.Select Checkbox    ${CHECKBOX_CHANGEPASS}

Input Password Info
    [Arguments]     ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_PASSWORD_INFO}
    SeleniumLibrary.Input Text    ${TXT_PASSWORD_INFO}    ${password}
    Sleep    ${DEFAULT_TIMEOUT}

Input Password Info Confirm
    [Arguments]     ${password_confirm}
    SeleniumLibrary.Wait Until Element Is Visible    ${TXT_PASSWORD_CONFIRM_INFO}
    SeleniumLibrary.Input Text    ${TXT_PASSWORD_CONFIRM_INFO}    ${password_confirm}
    Sleep    ${DEFAULT_TIMEOUT}

Click Button Update Info
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_UPDATE}
    Sleep    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${BTN_UPDATE}

Click Button Reset Info
    SeleniumLibrary.Wait Until Element Is Visible    ${BTN_RESET}
    SeleniumLibrary.Click Element    ${BTN_RESET}

Get Alert Info
    [Arguments]     ${MSG_ALERT_INFO_CONTENT}
    ${MSG_ALERT_INFO}=     SeleniumLibrary.Handle Alert    action=ACCEPT   timeout=2s
    Should Be Equal    ${MSG_ALERT_INFO}    ${MSG_ALERT_INFO_CONTENT}
    Sleep   ${DEFAULT_TIMEOUT}

Clear Email
    [Arguments]     ${email}
    Sleep    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Clear Element Text    ${TXT_EMAIL_INFO}
    ${compore_txt_email}=   SeleniumLibrary.Get Text    ${TXT_EMAIL_INFO}
    Should Be Equal    ${compore_txt_email}    ${EMPTY}
    Sleep    ${DEFAULT_TIMEOUT}

Compore Condition Email Info
    [Arguments]     ${info_condition_email}
    ${actual_email_info}=   SeleniumLibrary.Get Text    ${CONDITION_EMAIL_INFO}
    Log To Console    >>>${actual_email_info}<<<
    ${actual_email_info}=   Strip String    ${actual_email_info}
    Should Be Equal As Strings    ${actual_email_info}    ${info_condition_email}
    Sleep    ${DEFAULT_TIMEOUT}

Compore Condition Password Info
    [Arguments]     ${info_condition_password}
    ${actual_password_info}=   SeleniumLibrary.Get Text    ${CONDITION_PASSWORD_INFO}
    Log To Console    >>>${actual_password_info}<<<
    ${actual_password_info}=   Strip String    ${actual_password_info}
    Should Be Equal As Strings    ${actual_password_info}    ${info_condition_password}
    Sleep    ${DEFAULT_TIMEOUT}

Compore Condition Password Confirm Info
    [Arguments]     ${info_condition_pw_confirm}
    ${actual_pw_confirm_info}=   SeleniumLibrary.Get Text    ${CONDITION_PASSWORD_CONFIRM_INFO}
    Log To Console    >>>${actual_pw_confirm_info}<<<
    ${actual_pw_confirm_info}=   Strip String    ${actual_pw_confirm_info}
    Should Be Equal As Strings    ${actual_pw_confirm_info}    ${info_condition_pw_confirm}
    Sleep    ${DEFAULT_TIMEOUT}

Condition Two Password
    [Arguments]     ${info_compore_password}
    ${actual_compore_password}=   SeleniumLibrary.Get Text    ${COMPORE_TWO_PASSWORD}
    Log To Console    >>>${actual_compore_password}<<<
    ${actual_compore_password}=   Strip String    ${actual_compore_password}
    Should Be Equal As Strings    ${actual_compore_password}    ${info_compore_password}
    Sleep    ${DEFAULT_TIMEOUT}

Condition Format Email
    [Arguments]     ${info_format_email}
    ${actual_format_email}=   SeleniumLibrary.Get Text    ${FORMAT_EMAIL}
    Log To Console    >>>${actual_format_email}<<<
    ${actual_format_email}=   Strip String    ${actual_format_email}
    Should Be Equal As Strings    ${actual_format_email}    ${info_format_email}
    Sleep    ${DEFAULT_TIMEOUT}