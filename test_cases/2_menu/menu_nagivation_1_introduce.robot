*** Settings ***
Library    SeleniumLibrary
Resource        ../../config/browser_config.robot
Resource        ../../resources/keywords/menu_keywords.robot
Resource        ../../variables/global_variables.robot

Test Setup         Open Basic Browser With Chrome
Suite Teardown      Close Browser Web


*** Test Cases ***
#Check Submenu Introduce History In Introduce Navigation
TC002 - Kiểm tra điều hướng sang "Lịch sử phát triển"
    Check Nagivation Introduce
    Check Submenu Introduce History

#Check Submenu Introduce Business In Introduce Navigation
TC003 - Kiểm tra điều hướng sang "Chức năng – Nghiệp vụ"
    Check Nagivation Introduce
    Check Submenu Introduce Business

#Check Submenu Introduce Organizational Party In Introduce Navigation
TC004 - Kiểm tra điều hướng sang "Chi bộ"
    Check Nagivation Introduce
    Check Submenu Introduce Organizational Party

#Check Submenu Introduce Organizational Official In Introduce Navigation
TC005 - Kiểm tra điều hướng sang "Cán bộ, viên chức"
    Check Nagivation Introduce
    Check Submenu Introduce Organizational Official

#Check Submenu Introduce Organizational Union In Introduce Navigation
TC006 - Kiểm tra điều hướng sang "Công đoàn"
    Check Nagivation Introduce
    Check Submenu Introduce Organizational Union

#Check Submenu Introduce Information In Introduce Navigation
TC007 - Kiểm tra điều hướng sang "Nguồn lực thông tin"
    Check Nagivation Introduce
    Check Submenu Introduce Information

#Check Submenu Introduce Library User Resource In Introduce Navigation
TC008 - Kiểm tra điều hướng sang "Người dùng tin và nguồn tin"
    Check Nagivation Introduce
    Check Submenu Introduce Library User Resource

#Check Submenu Introduce Library Book Borrow In Introduce Navigation
TC009 - Kiểm tra điều hướng sang "Quy định mượn sách"
    Check Nagivation Introduce
    Check Submenu Introduce Library Book Borrow

#Check Submenu Introduce Library Submit Thesis In Introduce Navigation
TC010 - Kiểm tra điều hướng sang "Quy định nộp luận án, luận văn"
    Check Nagivation Introduce
    Check Submenu Introduce Library Submit Thesis