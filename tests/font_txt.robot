*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     String
Library     Browser

*** Variables ***
${BASE_URL}    https://lib.qnu.edu.vn/
${NEWS_MENU}    //ul[@id='navigation']//span[contains(text(),'Tin tức')]
${NEWS_LINKS_PATTERN}    //a[contains(@href, 'TrangTinTinTucChiTiet.aspx?Id=')]
${NEWS_PATTERN}    //a[contains(text(),'QNU HƯỚNG TỚI THƯ VIỆN HIỆN ĐẠI VỚI GIẢI PHÁP BẢO ')]
#%{link}      xpath=//a[@href="TrangTinTinTucChiTiet.aspx?Id=101"]


*** Test Cases ***
Test Plus Text
    [Documentation]    Test so sánh cỡ chữ với toàn bộ link tin tức
    SeleniumLibrary.Open Browser    ${BASE_URL}    chrome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_MENU}   2s
    SeleniumLibrary.Click Element    ${NEWS_MENU}
    # Chờ trang tin tức load xong
    #SeleniumLibrary.Wait Until Page Contains Element    ${NEWS_LINKS_PATTERN}    10s
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_PATTERN}    3s
    SeleniumLibrary.Click Element    ${NEWS_PATTERN}

    # Tìm đoạn text cần test
    ${text_can_click}=  Set Variable    ///span[contains(text(),'Từ ngày 05-10/9/2025, Trường Đại học Quy Nhơn phối')]
    SeleniumLibrary.Wait Until Element Is Visible    ${text_can_click}      3s

    # Láy cỡ chữ ban đầu
    ${co_chu_ban_dau}=      get style   ${text_can_click}   15
    Log     Cỡ chữ ban đầu: ${co_chu_ban_dau}

    # Nhất nút tăng cỡ chữ
    SeleniumLibrary.Click Element   //a[@id='lnkFontPlus']
    Sleep    2s

     #Lấy cỡ chữ sau khi tăng
    ${co_chu_moi}=      Get Style   ${text_can_click}   17
    Log     Cỡ chữ mới: ${co_chu_moi}

     #so sánh
    ${so_cu}=    Convert To Number    ${co_chu_ban_dau.replace('px','')}
    ${so_moi}=    Convert To Number    ${co_chu_moi.replace('px','')}

    IF    ${so_moi} > ${so_cu}
        Log    THÀNH CÔNG: Cỡ chữ tăng từ ${so_cu}px lên ${so_moi}px
    ELSE
        Log    THẤT BẠI: Cỡ chữ không tăng (${so_cu}px → ${so_moi}px)
    END

    SeleniumLibrary.Close Browser


Test Minus Text
    [Documentation]    Test so sánh cỡ chữ với toàn bộ link tin tức
    SeleniumLibrary.Open Browser    ${BASE_URL}    chrome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_MENU}
    SeleniumLibrary.Click Element    ${NEWS_MENU}
    # Chờ trang tin tức load xong
    #SeleniumLibrary.Wait Until Page Contains Element    ${NEWS_LINKS_PATTERN}    10s
    SeleniumLibrary.Wait Until Element Is Visible    ${NEWS_PATTERN}    3s
    SeleniumLibrary.Click Element    ${NEWS_PATTERN}

    # Tìm đoạn text cần test
    ${text_can_click}=  Set Variable    ///span[contains(text(),'Từ ngày 05-10/9/2025, Trường Đại học Quy Nhơn phối')]
    SeleniumLibrary.Wait Until Element Is Visible    ${text_can_click}      3s

    # Láy cỡ chữ ban đầu
#    ${co_chu_ban_dau}=      get style   ${text_can_click}   15
#    Log     Cỡ chữ ban đầu: ${co_chu_ban_dau}

    # Nhất nút tăng cỡ chữ
    SeleniumLibrary.Click Element   //a[@id='lnkFontMinus']
    Sleep    2s

    # Lấy cỡ chữ sau khi giảm
#    ${co_chu_moi}=      Get Style   ${text_can_click}   17
#    Log     Cỡ chữ mới: ${co_chu_moi}

    # so sánh
#    ${so_cu}=    Convert To Number    ${co_chu_ban_dau.replace('px','')}
#    ${so_moi}=    Convert To Number    ${co_chu_moi.replace('px','')}

#    IF    ${so_moi} < ${so_cu}
#        Log    THÀNH CÔNG: Cỡ chữ giảm từ ${so_cu}px xuống ${so_moi}px
#    ELSE
#        Log    THẤT BẠI: Cỡ chữ không giam (${so_cu}px → ${so_moi}px)
#    END

    SeleniumLibrary.Close Browser