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
${LinkManageStd}     http://127.0.0.1:8080/manageStudentConsider
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Documentation]     ใช้สำหรับกดปุ่มเข้าสู่ระบบ
    Click Button    ${bt_Login}  
กรอกข้อมูลเข้าสู่ระบบ 
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_user}     ${user_name}
    Input Text      ${txt_pass}     ${pass_name}
เปิดลิงค์
    [Documentation]     ใช้สำหรับเปิดหน้าจอ
    Open Browser     ${LinkManageStd}   ${web_browser}
***Test Cases***
TC-PSF-03-01-01 ตรวจสอบการแสดงผลข้อมูลรายชื่อนิสิตรอการพินิจ  //เพิ่ม database somnuk ไปเพราะเผลอลบตอนเก่า ส่วน "เปิดลิงค์" ใช้ xpath ไม่ได้ เพราะไม่ใช่ปุ่ม มันหาไม่เจอ
    เปิดหน้าจอ
    กรอกข้อมูลเข้าสู่ระบบ 
    กดปุ่ม
    เปิดลิงค์