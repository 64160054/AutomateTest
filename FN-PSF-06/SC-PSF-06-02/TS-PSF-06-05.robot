*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/followStudentEnpReg/16
${web_browser}  chrome
${bt_submit}      ok
${bt_followStudentEnpEdit}    xpath=//a[@href="/deleteRegEnp/9"]
${LinkfollowStudent}    xpath=//a[@href="/followStudentEnp"]
${EnpReg _stu}  stuEnpReg      
${EnpReg _Edit}  Test
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Arguments]     ${Choice}  
    [Documentation]     ใช้สำหรับกดปุ่มบันทึก
    Click Button    ${Choice}  
กรอกข้อมูล
    [Documentation]     ใช้สำหรับกรอกข้อมูลที่ต้องการแก้ไข
    Input Text  ${EnpReg _stu}  ${EnpReg _Edit}   
เปิดลิงค์
    [Arguments]     ${Choice}
    [Documentation]     ใช้สำหรับเปิดหน้าจอ
    Click Link     ${Choice}
    
***Test Cases***
TS-PSF-06-05-01 ตรวจสอบการทำงานของปุ่มบันทึก
    เปิดหน้าจอ
    กรอกข้อมูล
    กดปุ่ม    ${bt_submit}
TS-PSF-06-05-02 ตรวจสอบการทำงานของปุ่มลบ
    เปิดหน้าจอ
    เปิดลิงค์  ${bt_followStudentEnpEdit}