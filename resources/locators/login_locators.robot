*** Variables ***
${LOGIN_URL}        xpath://ul[@id='navigation']//li//a[@href='dangnhap.aspx']//span[contains(text(),'Đăng nhập')]
${TXT_CARDNUM}      //input[@name='ctl00$phContent$txtCardNum']
${TXT_PASSWORD}     //input[@id='ctl00_phContent_txtPassword']
${BTN_LOGIN}        xpath://input[@id='ctl00_phContent_btnLogin']
${LABEL_USERNAME}   //span[@id='ctl00_phContent_lblPatronName']
${LINK_USERNAME}    id:ctl00_ucMenuRight_lnkTenDangNhap
#${LINK_USERNAME}    //a[@id='ctl00_ucMenuRight_lnkTenDangNhap']