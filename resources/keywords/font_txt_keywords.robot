*** Settings ***
Library     SeleniumLibrary
Library     Browser
Resource        ../locators/font_txt_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/font_txt_variables.robot


*** Keywords ***
Go To News Web
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_URL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NEWS_URL}

Click 1 Pattern
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_PATTERN}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NEWS_PATTERN}

Plus Font Size
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_PATTERN_CONTENT}    ${DEFAULT_TIMEOUT}
    Log    Cỡ chữ ban đầu: ${initial_font_size} px
    SeleniumLibrary.Click Element    ${NEWS_BTN_PLUS}
    Sleep    ${DEFAULT_TIMEOUT}
    Log    Cỡ chữ mới: 

