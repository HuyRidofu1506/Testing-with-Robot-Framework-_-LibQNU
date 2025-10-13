*** Settings ***
Library    SeleniumLibrary
Resource        ../config/browser_config.robot
Resource        ../resources/keywords/comment_keywords.robot
Resource        ../variables/global_variables.robot
Resource        ../variables/comment_variables.robot

Test Setup          Go To Comment Web
Suite Teardown      Close Browser Web

*** Variables ***


*** Test Cases ***
Conditional for Sending Comment To Lib_QNU Without Information
    Click Send Button
    Compore Condition Name
    Compore Condition Email
    Compore Condition Content

Send Comment To Lib_QNU With Information
    Input Name          ${CMT_NAME}
    Input CardNum       ${CMT_CARDNUM}
    Input Email         ${CMT_EMAIL}
    Input Title         ${CMT_TITLE}
    Input Content       ${CMT_CONTENT}
    Click Send Button
    Get Alert Comment

Reset Comment
    Input Name          ${CMT_NAME}
    Input CardNum       ${CMT_CARDNUM}
    Input Email         ${CMT_EMAIL}
    Input Title         ${CMT_TITLE}
    Input Content       ${CMT_CONTENT}
    Click Reset Button
    Compore Text Name
    Compore Text CardNum
    Compore Text Email
    Compore Text Title
    Compore Text Content        #vẫn không clear được phần này
