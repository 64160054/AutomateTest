*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentEnp
${web_browser}  chrome
${bt_add}    btnAdd

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กดปุ่ม
    [Documentation]     ใช้กดปุ่มต่างๆ
    Click Button    ${bt_add}   

***Test Cases***
TC-PSF-04-05-01 ตรวจสอบการแสดงผลเพิ่มข้อมูลรายชื่อนิสิตรอการพินิจ
    เปิดหน้าจอ
    กดปุ่ม
