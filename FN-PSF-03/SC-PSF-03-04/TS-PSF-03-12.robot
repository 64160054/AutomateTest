*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${web_browser}  chrome
${bt_del}   xpath=//a[@href="/delCon/6"]
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
TC-PSF-03-12-01 ตรวจสอบการทำงานของปุ่มยกเลิก
    เปิดหน้าจอ
    กดลิงค์
    กดปุ่ม    ${bt_cancel}
TC-PSF-03-12-02 ตรวจสอบการทำงานของปุ่มตกลง
    เปิดหน้าจอ
    กดลิงค์
    กดปุ่ม    ${bt_submit}
    