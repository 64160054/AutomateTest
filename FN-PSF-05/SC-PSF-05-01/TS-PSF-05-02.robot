*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/followStudent
${web_browser}  chrome
${user_name}     สมพง
${search_name}  searchuser 
${bt_search}      btnsearch
${bt_followStudentEdit}    xpath=//a[@href="/followStudentCon/5"]

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Documentation]     ใช้สำหรับกดปุ่มเข้าสู่ระบบ
    Click Button    ${bt_search}  
กรอกข้อมูล
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${search_name}     ${user_name}
เปิดลิงค์
    [Documentation]     ใช้สำหรับเปิดหน้าจอ
    Click Link     ${bt_followStudentEdit}
***Test Cases***
TC-PSF-05-02-01 ตรวจสอบการทำงานของปุ่มค้นหา
    เปิดหน้าจอ
    กรอกข้อมูล
    กดปุ่ม
TC-PSF-05-02-02 ตรวจสอบการทำงานของปุ่มติดตาม
    เปิดหน้าจอ
    เปิดลิงค์  