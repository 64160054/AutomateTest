*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageEnp_edit/1
${web_browser}  chrome
${stdid}    64160000
${name}    จิรายุ เจริญผลวัฒนา
${level}    ตรี ปกติ 
${Gpa}  1.95
${Status}   10
${creditPassed}     90
${creditDown}       100
${txt_stdid}     studentIDEnp
${txt_name}     nameStuEnp
${txt_level}     stuLevelEnp
${txt_Gpa}     stuGpaEnp
${txt_Status}     stuStatusEnp
${txt_creditPassed}     creditPassedEnp
${txt_creditDown}     creditDownEnp
${bt_submit}    ok
${bt_cancel}    cancel

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้กดปุ่มต่างๆ
    Click Button    ${Choicebtn}   
กรอกข้อมูล
    [Documentation]     ใช้กรอกข้อมูล ที่ใช้เพิ่มข้อมูลนิสิตจบไม่ตรงแผน
    Input Text      ${txt_stdid}        ${stdid}
    Input Text      ${txt_name}     ${name}
    Select From List By Label   ${txt_level}        ${level}   
    Input Text      ${txt_Gpa}      ${Gpa}
    Select From List By Label   ${txt_Status}       ${Status} 
    Input Text      ${txt_creditPassed}     ${creditPassed}
    Input Text      ${txt_creditDown}       ${creditDown}

***Test Cases***
TC-PSF-04-09-01 ตรวจสอบการทำงานของปุ่มบันทึก
    เปิดหน้าจอ
    กรอกข้อมูล
    กดปุ่ม    ${bt_submit}
TC-PSF-04-09-02 ตรวจสอบการทำงานของปุ่มยกเลิก
    เปิดหน้าจอ
    กรอกข้อมูล
    กดปุ่ม    ${bt_cancel}

