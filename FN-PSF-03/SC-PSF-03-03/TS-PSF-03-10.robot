*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageCon_edit/5
${web_browser}  chrome
${level}    ตรี ปกติ 
${Status}   10
${considerCon}      โปรต่ำ
${considertime}     1
${txt_level}     stuLevelCon
${txt_Status}     stuStatusCon
${txt_considerCon}     considerCon
${txt_considertime}     considertime

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้สำหรับกดปุ่มเพิ่มข้อมูล
    Click Button    ${Choicebtn}
กรอกข้อมูล
    [Arguments]     ${ChoiceDD}    ${text}
    [Documentation]     ใช้กรอกข้อมูล ที่ใช้เพิ่มข้อมูลนิสิตรอการพินิจ
    Select From List By Label   ${ChoiceDD}    ${text}        

***Test Cases***
TC-PSF-03-10-01 ตรวจสอบการเลือกข้อมูลของ Dropdown ข้อมูล ระดับ
    เปิดหน้าจอ
    กรอกข้อมูล    ${txt_level}        ${level}
TC-PSF-03-10-01 ตรวจสอบการเลือกข้อมูลของ Dropdown ข้อมูล สถานภาพ
    เปิดหน้าจอ
    กรอกข้อมูล    ${txt_Status}       ${Status}
TC-PSF-03-10-01 ตรวจสอบการเลือกข้อมูลของ Dropdown ข้อมูล รอการพิจารณา
    เปิดหน้าจอ
    กรอกข้อมูล    ${txt_considerCon}      ${considerCon}
TC-PSF-03-10-01 ตรวจสอบการเลือกข้อมูลของ Dropdown ข้อมูล ครั้งที่    
    เปิดหน้าจอ
    กรอกข้อมูล    ${txt_considertime}     ${considertime}