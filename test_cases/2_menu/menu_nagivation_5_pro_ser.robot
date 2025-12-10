*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Check Submenu Product Service New Book In Product Services Navigation
TC018 - Kiểm tra điều hướng sang "Thư mục sách mới"
    Check Nagivation Product Service
    Check Submenu Product Service New Book

#Check Submenu Product Service Subject In Product Services Navigation
TC019 - Kiểm tra điều hướng sang "Dich vụ mượn về nhà"
    Check Nagivation Product Service
    Check Submenu Product Service Subject

#Check Submenu Product Service Home Service In Product Services Navigation
TC020 - Kiểm tra điều hướng sang "Phòng đọc mở"
    Check Nagivation Product Service
    Check Submenu Product Service Home Service

#Check Submenu Product Service Borrow Return In Product Services Navigation
TC021 - Kiểm tra điều hướng sang "Quy trình mượn, trả sách"
    Check Nagivation Product Service
    Check Submenu Product Service Borrow Return

#Check Submenu Product Service Advice Support In Product Services Navigation
TC022 - Kiểm tra điều hướng sang "Tư vấn hỗ trợ bạn đọc"
    Check Nagivation Product Service
    Check Submenu Product Service Advice Support

#Check Submenu Product Service Search In Product Services Navigation
TC023 - Kiểm tra điều hướng sang "Tìm kiếm thông tin"
    Check Nagivation Product Service
    Check Submenu Product Service Search

#Check Submenu Product Service Training In Product Services NNavigation
TC024 - Kiểm tra điều hướng sang "Đào tạo người dùng tin"
    Check Nagivation Product Service
    Check Submenu Product Service Training


