*** Settings ***
Library     SeleniumLibrary
Resource        ../locators/interface_locators.robot
Resource        ../locators/menu_locators.robot
Resource        ../../variables/global_variables.robot
Resource        ../../variables/menu_variables.robot
Resource    ../../config/browser_config.robot


*** Keywords ***
#HOME
Check Logo Home
    SeleniumLibrary.Wait Until Element Is Visible    ${LOGO_HOME}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LOGO_HOME}
    Sleep    ${DEFAULT_TIMEOUT}

Check Nagivation Home
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_HOME}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_HOME}
    Sleep    ${DEFAULT_TIMEOUT}

#INTRODUCE
Check Nagivation Introduce
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_INTRODUCE}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${NAGIVATION_INTRODUCE}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Introduce History
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_HISTORY}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_HISTORY}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=1    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_HISTORY}

Check Submenu Introduce Business
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_BUSINESS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_BUSINESS}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=4    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_BUSINESS}



Check Submenu Introduce Organizational Party
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_ORGANIZATIONAL}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_INTRODUCE_ORGANIZATIONAL}
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_ORGANIZATIONAL_PARTY}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_ORGANIZATIONAL_PARTY}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=5    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_ORGANIZATIONAL_PARTY}

Check Submenu Introduce Organizational Official
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_ORGANIZATIONAL}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_INTRODUCE_ORGANIZATIONAL}
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_ORGANIZATIONAL_OFFICIALS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_ORGANIZATIONAL_OFFICIALS}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=3    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_ORGANIZATIONAL_OFFICIALS}

Check Submenu Introduce Organizational Union
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_ORGANIZATIONAL}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_INTRODUCE_ORGANIZATIONAL}
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_ORGANIZATIONAL_UNION}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_ORGANIZATIONAL_UNION}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=7    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_ORGANIZATIONAL_UNION}

Check Submenu Introduce Information
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_INFORMATION}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_INFORMATION}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=8    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_INFORMATION}

Check Submenu Introduce Library
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_INFORMATION}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_INFORMATION}

Check Submenu Introduce Library User Resource
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_lIBRARY}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_INTRODUCE_lIBRARY}
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_LIBRARY_USER_RESOURCE}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_LIBRARY_USER_RESOURCE}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=9    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_lIBRARY_USER_RESOURCE}

Check Submenu Introduce Library Book Borrow
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_lIBRARY}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_INTRODUCE_lIBRARY}
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_LIBRARY_BOOK_BORROW}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_LIBRARY_BOOK_BORROW}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=10    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_lIBRARY_BOOK_BORROW}

Check Submenu Introduce Library Submit Thesis
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_lIBRARY}    ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_INTRODUCE_lIBRARY}
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_INTRODUCE_LIBRARY_SUBMIT_THESIS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_INTRODUCE_LIBRARY_SUBMIT_THESIS}
    SeleniumLibrary.Wait Until Location Contains    /TrangTinGioiThieuChiTiet.aspx?id=11    ${DEFAULT_TIMEOUT}
    ${current_url}=     SeleniumLibrary.Get Location
    Should Be Equal As Strings    ${current_url}    ${URL_INTRODUCE_lIBRARY_SUBMIT_THESIS}

#NEWS
Check Nagivation News
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_NEWS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_NEWS}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu News Activities
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_NEWS_ACTIVITIES}     ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_NEWS_ACTIVITIES}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu News Notifications
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_NEWS_NOTIFICATIONS}     ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_NEWS_NOTIFICATIONS}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu News Videos
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_NEWS_VIDEOS}     ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_NEWS_VIDEOS}
    Sleep    ${DEFAULT_TIMEOUT}

#SEARCH
Check Nagivation Search
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_DOC_SEARCH}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${NAGIVATION_DOC_SEARCH}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Search Traditional
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_SEARCH_TRADITIONAL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_SEARCH_TRADITIONAL}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Search Digital
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_SEARCH_DIGITAL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_SEARCH_DIGITAL}
    Sleep    ${DEFAULT_TIMEOUT}

#BUSINESS
Check Nagivation Business
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_BUSINESS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${NAGIVATION_BUSINESS}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Business Operations
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_BUSINESS_OPERATIONS}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_BUSINESS_OPERATIONS}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Business Legal
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_BUSINESS_LEGAL}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${SUBMENU_BUSINESS_LEGAL}
    Sleep    ${DEFAULT_TIMEOUT}

#PRODUCTS - SERVICES
Check Nagivation Product Service
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_PROD_SERV}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${NAGIVATION_PROD_SERV}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service New Book
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_NEW_BOOK}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_NEW_BOOK}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service Subject
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_SUBJECT}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_SUBJECT}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service Home Service
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_HOME_SERVICE}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_HOME_SERVICE}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service Borrow Return
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_BORROW_RETURN}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_BORROW_RETURN}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service Advice Support
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_ADVICE_SUPPORT}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_ADVICE_SUPPORT}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service Search
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_SEARCH}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_SEARCH}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Product Service Training
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_PRODUCTS_SERVICES_TRAINING}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_PRODUCTS_SERVICES_TRAINING}
    Sleep    ${DEFAULT_TIMEOUT}

#HELP
Check Nagivation Help
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_HELP}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Mouse Over    ${NAGIVATION_HELP}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Help Q&A
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_HELPS_Q&A}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_HELPS_Q&A}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Help Usage Instructions
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_HELPS_USAGE_INSTRUCTIONS}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_HELPS_USAGE_INSTRUCTIONS}
    Sleep    ${DEFAULT_TIMEOUT}

Check Submenu Help Library Layout
    SeleniumLibrary.Wait Until Element Is Visible    ${SUBMENU_HELPS_LIBRARY_LAYOUT}  ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${SUBMENU_HELPS_LIBRARY_LAYOUT}
    Sleep    ${DEFAULT_TIMEOUT}

#CONTACT
Check Nagivation Contact
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_CONTACT}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_CONTACT}
    Sleep    ${DEFAULT_TIMEOUT}

#LOGIN
Check Nagivation Login
    SeleniumLibrary.Wait Until Element Is Visible    ${NAGIVATION_LOGIN}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${NAGIVATION_LOGIN}
    Sleep    ${DEFAULT_TIMEOUT}

#LANGUAGE
Check Button Language VN
    SeleniumLibrary.Wait Until Element Is Visible    ${LANGUAGE_VN}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LANGUAGE_VN}
    Sleep    ${DEFAULT_TIMEOUT}

Check Button Language ENG
    SeleniumLibrary.Wait Until Element Is Visible    ${LANGUAGE_ENG}   ${DEFAULT_TIMEOUT}
    SeleniumLibrary.Click Element    ${LANGUAGE_ENG}
    Sleep    ${DEFAULT_TIMEOUT}




