*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${web_browser}  chrome
${bt_edit}  xpath=//a[@href="/manageCon_edit/1"]
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดลิงค์
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${bt_edit}

***Test Cases***
TC-PSF-03-08-01 ตรวจสอบการแสดงผลแก้ไขข้อมูลรายชื่อนิสิตรอการพินิจ
    เปิดหน้าจอ
    กดลิงค์