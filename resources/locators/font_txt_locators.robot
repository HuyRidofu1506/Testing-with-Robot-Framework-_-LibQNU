*** Variables ***
${NEWS_URL}     //ul[@id='navigation']//span[contains(text(),'Tin tức')]
#${NEWS_URL}       //body/form[@id='aspnetForm']/div[@class='page wrapper']/div[@class='container']/div[@class='row']/div[@id='mainmenu']/div[@class='navbar-header d-none d-lg-block']/nav[@id='site-navigation']/ul[@id='navigation']/li[3]/a[1]
${NEWS_PATTERN}      //a[contains(text(),'QNU HƯỚNG TỚI THƯ VIỆN HIỆN ĐẠI VỚI GIẢI PHÁP BẢO ')]
${NEWS_PATTERN_CONTENT}     //span[contains(text(),'Trong thời đại chuyển đổi số, thư viện không chỉ l')]
${NEWS_BTN_MINUS}=      //a[@id='lnkFontMinus']
${NEWS_BTN_PLUS}=       //a[@id='lnkFontPlus']