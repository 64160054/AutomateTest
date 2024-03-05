*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${bt_edit}  xpath=//a[@href="/manageCon_edit/1"]
${web_browser}  chrome
${stdid}    64160000
${name}    จิรายุ เจริญผลวัฒนา
${level}    ตรี ปกติ 
${Gpa}  1.95
${Status}   10
${creditPassed}     90
${creditDown}       100
${considerCon}      โปรต่ำ
${considertime}     1
${txt_stdid}     studentIDCon
${txt_name}     nameStuCon
${txt_level}     stuLevelCon
${txt_Gpa}     stuGpaCon
${txt_Status}     stuStatusCon
${txt_creditPassed}     creditPassedCon
${txt_creditDown}     creditDownCon
${txt_considerCon}     considerCon
${txt_considertime}     considertime
${bt_submit}   ok
${bt_cancel}   cancel
*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้สำหรับกดปุ่มเพิ่มข้อมูล
    Click Button    ${Choicebtn}
กดลิงค์
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${bt_edit}
กรอกข้อมูล
    [Documentation]     ใช้กรอกข้อมูล ที่ใช้เพิ่มข้อมูลนิสิตรอการพินิจ
    Input Text      ${txt_stdid}        ${stdid}
    Input Text      ${txt_name}     ${name}
    Select From List By Label   ${txt_level}        ${level}   
    Input Text      ${txt_Gpa}      ${Gpa}
    Select From List By Label   ${txt_Status}       ${Status} 
    Input Text      ${txt_creditPassed}     ${creditPassed}
    Input Text      ${txt_creditDown}       ${creditDown}
    Select From List By Label   ${txt_considerCon}      ${considerCon}  
    Select From List By Label   ${txt_considertime}     ${considertime}  

***Test Cases***
TC-PSF-03-09-01 ตรวจสอบการทำงานของปุ่มยกเลิก
    เปิดหน้าจอ
    กดลิงค์
    กรอกข้อมูล
    กดปุ่ม    ${bt_cancel}
TC-PSF-03-09-02 ตรวจสอบการทำงานของปุ่มบันทึก
    เปิดหน้าจอ
    กดลิงค์
    กรอกข้อมูล
    กดปุ่ม    ${bt_submit}