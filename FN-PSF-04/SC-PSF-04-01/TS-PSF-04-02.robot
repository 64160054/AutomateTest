*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentEnp
${web_browser}  chrome
${text_search}  searchuser
${name_search}  นาย โชคชัยดื่มโชค
${id_search}    54660203
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กรอกข้อมูล
    [Arguments]     ${Choice}
    [Documentation]     ใช้กรอกข้อมูล ชื่อ-นามสกุล หรือ รหัสนิสิต
    Input Text      ${text_search}      ${Choice}
***Test Cases***
TC-PSF-04-02-01 ตรวจสอบการกรอกข้อมูลด้วย ชื่อ-นามสกุล
    เปิดหน้าจอ
    กรอกข้อมูล    ${name_search}
TC-PSF-04-02-02 ตรวจสอบการกรอกข้อมูลด้วย รหัสนิสิต
    เปิดหน้าจอ
    กรอกข้อมูล    ${id_search}