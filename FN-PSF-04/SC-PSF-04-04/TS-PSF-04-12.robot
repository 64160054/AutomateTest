*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentEnp
${web_browser}  chrome
${bt_del}   xpath=//a[@href="/delEnp/16"]
${bt_submit}    ok
${bt_cancel}    cancel

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กดลิงค์
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${bt_del}  
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้กดปุ่มต่างๆ
    Click Button    ${Choicebtn}   

***Test Cases***
TC-PSF-04-12-01 ตรวจสอบการทำงานของปุ่มยกเลิก
    เปิดหน้าจอ
    กดลิงค์
    กดปุ่ม    ${bt_cancel}
TC-PSF-04-12-02 ตรวจสอบการทำงานของปุ่มตกลง
    เปิดหน้าจอ
    กดลิงค์
    กดปุ่ม    ${bt_submit}


