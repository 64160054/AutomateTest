*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/
${web_browser}  chrome
${txt_user}     email
${txt_pass}     password
${bt_Login}      btnok
${user_name1}     pichet
${user_name2}     pichet01
${user_name3}    piche
${user_name4}     somnuk
${user_name5}     suda
${pass_name1}    12345
${pass_name2}    123456
${pass_name3}    1234567


*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Documentation]     ใช้สำหรับกดปุ่มเข้าสู่ระบบ
    Click Button    ${bt_Login}  
กรอกข้อมูล 
    [Arguments]     ${user_name}
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_user}     ${user_name}
กรอกรหัสผ่าน
    [Arguments]     ${pass_name}
    [Documentation]     ใช้กรอกข้อมูล password ผู้ใช้
    Input Text      ${txt_pass}     ${pass_name}
กรอกข้อมูลเข้าสู่ระบบ 
    [Arguments]     ${user_name}    ${pass_name}
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_user}     ${user_name}
    Input Text      ${txt_pass}     ${pass_name}
***Test Cases***
TC-PSF-01-01-01 ตรวจสอบการกรอกข้อมูล Username รับไม่เกินจำนวน 6 ตัวอักษรและไม่น้อยกว่า 6 ตัวอักษร
    เปิดหน้าจอ    
    กรอกข้อมูล    ${user_name1} 
TC-PSF-01-01-02 ตรวจสอบการกรอกข้อมูล Username รับเกินจำนวน 6 ตัวอักษร
    เปิดหน้าจอ    
    กรอกข้อมูล    ${user_name2}
TC-PSF-01-01-03 ตรวจสอบการกรอกข้อมูล Username รับน้อยกว่าจำนวน 6 ตัวอักษร
    เปิดหน้าจอ    
    กรอกข้อมูล    ${user_name3}
TC-PSF-01-01-04 ตรวจสอบการกรอกข้อมูล Password รับไม่เกินจำนวน 6 ตัวอักษรและไม่น้อยกว่า 6 ตัวอักษร
    เปิดหน้าจอ    
    กรอกรหัสผ่าน    ${pass_name2}
TC-PSF-01-01-05 ตรวจสอบการกรอกข้อมูล Password รับเกินจำนวน 6 ตัวอักษร
    เปิดหน้าจอ    
    กรอกรหัสผ่าน    ${pass_name3}
TC-PSF-01-01-06 ตรวจสอบการกรอกข้อมูล Password รับน้อยกว่าจำนวน 6 ตัวอักษร
    เปิดหน้าจอ    
    กรอกรหัสผ่าน    ${pass_name1}
TC-PSF-01-01-07 ตรวจสอบการกรอกข้อมูล Password รับข้อความที่กรอกไม่แสดงตัวอักษร
    เปิดหน้าจอ    
    กรอกรหัสผ่าน    ${pass_name1}
TC-PSF-01-01-08 ตรวจสอบการเข้าสู่ระบบสำหรับผู้ใช้สถานะ อาจารย์
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name1}      ${pass_name2} 
    กดปุ่ม    
TC-PSF-01-01-09 ตรวจสอบการเข้าสู่ระบบสำหรับผู้ใช้สถานะ เจ้าหน้าที่
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name4}      ${pass_name2} 
    กดปุ่ม    
TC-PSF-01-01-10 ตรวจสอบการเข้าสู่ระบบสำหรับผู้ใช้ที่ไม่มีสิทธิ์เข้าสู่ระบบ
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name5}      ${pass_name2}
    กดปุ่ม    
TC-PSF-01-02-01 ตรวจสอบการทำงานของปุ่ม
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name4}      ${pass_name2}
    กดปุ่ม    
TC-PSF-01-03-01 ตรวจสอบการแสดงผลชื่อผู้ใช้งาน
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name1}      ${pass_name2}
    กดปุ่ม    
TC-PSF-01-03-02 ตรวจสอบการแสดงผลสถานะผู้ใช้งานสถานะอาจารย์
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name1}      ${pass_name2}
    กดปุ่ม      
TC-PSF-01-03-03 ตรวจสอบการแสดงผลสถานะผู้ใช้งานสถานะเจ้าหน้าที่
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name4}      ${pass_name2}
    กดปุ่ม    
TC-PSF-01-03-04 ตรวจสอบการแสดงผลข้อมูลรายชื่อนิสิตรอการพินิจในระบบ
    เปิดหน้าจอ    
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name4}      ${pass_name2}
    กดปุ่ม    