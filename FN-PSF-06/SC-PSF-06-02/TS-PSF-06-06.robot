*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/followStudentEnpReg/16
${web_browser}  chrome
${EnpReg _stu}      stuEnpReg      
${EnpReg _Edit}  Test
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กรอกข้อมูล
    [Documentation]     ใช้สำหรับกรอกข้อมูลที่ต้องการแก้ไข
    Input Text      ${EnpReg _stu}      ${EnpReg _Edit}   
    
***Test Cases***
TS-PSF-06-06-01 ตรวจสอบการกรอกข้อมูลลงในระบบ
    เปิดหน้าจอ
    กรอกข้อมูล