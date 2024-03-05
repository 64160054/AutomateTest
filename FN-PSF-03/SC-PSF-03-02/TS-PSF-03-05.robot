*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${web_browser}  chrome
${txt_searchuser}     searchuser
${user_search}     สมพง มีมาก 63160254
${bt_add}   btnAdd
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Documentation]     ใช้สำหรับกดปุ่มเพิ่มข้อมูล
    Click Button    ${bt_add} 
กรอกข้อมูลค้นหา
    [Arguments]     ${Choice}
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_searchuser}    ${Choice}

***Test Cases***
TC-PSF-03-05-01 ตรวจสอบการแสดงผลเพิ่มข้อมูลรายชื่อนิสิตรอการพินิจ
    เปิดหน้าจอ
    กดปุ่ม