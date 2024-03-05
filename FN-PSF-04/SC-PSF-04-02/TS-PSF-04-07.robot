*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentEnp_add
${web_browser}  chrome
${level}    ตรี ปกติ 
${Status}   10
${txt_level}     stuLevelEnp
${txt_Status}     stuStatusEnp

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}       
กรอกข้อมูล
    [Documentation]     ใช้กรอกข้อมูล ที่ใช้เพิ่มข้อมูลนิสิตจบไม่ตรงแผน
    Select From List By Label   ${txt_level}        ${level}   
    Select From List By Label   ${txt_Status}       ${Status} 

***Test Cases***
TC-PSF-04-07-01 ตรวจสอบการเลือกข้อมูลของ Dropdown
    เปิดหน้าจอ
    กรอกข้อมูล
