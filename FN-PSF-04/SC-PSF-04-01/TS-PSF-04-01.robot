*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${web_browser}  chrome
${bt_StudentConsider}   xpath=//a[@href="/manageStudentEnp"]
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กดลิงค์
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${bt_StudentConsider}   

***Test Cases***
TC-PSF-04-01-01 ตรวจสอบการแสดงผลข้อมูลรายชื่อนิสิตจบไม่ตรงแผน
    เปิดหน้าจอ
    กดลิงค์