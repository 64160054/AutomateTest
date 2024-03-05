*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/followStudent
${web_browser}  chrome
${user_name}     สมพง มีมาก 63160254   	
${search_name}  searchuser 
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กรอกข้อมูล
    [Documentation]     ใช้กรอกข้อมูลเพื่อค้นหา
    Input Text      ${search_name}     ${user_name} 

***Test Cases***
TC-PSF-05-03-01 ตรวจสอบการค้นหาข้อมูลของระบบ
    เปิดหน้าจอ
    กรอกข้อมูล     