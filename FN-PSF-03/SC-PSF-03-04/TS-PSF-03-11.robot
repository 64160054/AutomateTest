*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${web_browser}  chrome
${bt_del}   xpath=//a[@href="/delCon/14"]
${bt_submit}    ok
${bt_cancel}    cancel

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้สำหรับกดปุ่มเพิ่มข้อมูล
    Click Button    ${Choicebtn}
กดลิงค์
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${bt_del}  

***Test Cases***
TC-PSF-03-11-01 ตรวจสอบการแสดงผลลบข้อมูลรายชื่อนิสิตรอการพินิจ
    เปิดหน้าจอ
    กดลิงค์