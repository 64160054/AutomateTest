*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/
${web_browser}  chrome
${txt_user}     email
${txt_pass}     password
${user_name}     somnuk
${pass_name}    123456
${bt_Login}      btnok
${LinkfollowStudent}    xpath=//a[@href="/followStudent"]
${bt_followStudentEdit}    xpath=//a[@href="/followStudentCon/5"]

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Documentation]     ใช้สำหรับกดปุ่มเข้าสู่ระบบ
    Click Button    ${bt_Login}  
กรอกข้อมูลเข้าสู่ระบบ 
    [Documentation]     ใช้กรอกข้อมูล username และ password
    Input Text      ${txt_user}     ${user_name}
    Input Text      ${txt_pass}     ${pass_name}
เปิดลิงค์
    [Arguments]     ${Choice}
    [Documentation]     ใช้สำหรับเปิดหน้าจอ
    Click Link     ${Choice}
    
***Test Cases***
TC-PSF-05-04-01 ตรวจสอบการแสดงผลข้อมูล รหัสนิสิต ชื่อ-สกุล ระดับ เกรดเฉลี่ย สถานภาพ หน่วยกิตที่ผ่าน หน่วยกิตที่ลง รอพิจารณา
    เปิดหน้าจอ
    กรอกข้อมูลเข้าสู่ระบบ 
    กดปุ่ม
    เปิดลิงค์  ${LinkfollowStudent}
    เปิดลิงค์  ${bt_followStudentEdit}