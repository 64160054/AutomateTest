*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentEnp
${web_browser}  chrome
${text_search}  searchuser
${name_search}  นาย โชคชัยดื่มโชค
${bt_search}    btnsearch


*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กรอกข้อมูล
    [Documentation]     ใช้กรอกข้อมูล ชื่อ-นามสกุล หรือ รหัสนิสิต
    Input Text      ${text_search}      ${name_search}
กดปุ่ม
    [Documentation]     ใช้กดปุ่มค้นหา
    Click Button    ${bt_search}   

***Test Cases***
TC-PSF-04-04-01 ตรวจสอบการกรอกข้อมูลด้วย ชื่อ-นามสกุล หรือ รหัสนิสิต
    เปิดหน้าจอ
    กรอกข้อมูล    
    กดปุ่ม    


