*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/followStudentCon/5
${web_browser}  chrome
${txt_user}     email
${txt_pass}     password
${user_name}     somnuk
${pass_name}    123456
${bt_submit}      ok
${LinkfollowStudent}    xpath=//a[@href="/followStudent"]
${ConReg _stu}  stuConReg      
${ConReg _Edit}  Test
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Documentation]     ใช้สำหรับกดปุ่มบันทึก
    Click Button    ${bt_submit}  
กรอกข้อมูล
    [Documentation]     ใช้สำหรับกรอกข้อมูลที่ต้องการแก้ไข
    Input Text  ${ConReg _stu}  ${ConReg _Edit}   
    
***Test Cases***
TC-PSF-05-05-01 ตรวจสอบการทำงานของปุ่มบันทึก
    เปิดหน้าจอ
    กรอกข้อมูล
    กดปุ่ม