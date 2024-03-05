*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentEnp
${web_browser}  chrome
${text_search}  searchuser
${name_search}  นาย โชคชัยดื่มโชค
${bt_search}    btnsearch
${bt_add}    btnAdd
${bt_edit}    xpath=//a[@href="/manageEnp_edit/1"]
${bt_del}    xpath=//a[@href="/delEnp/1"]

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}      
กรอกข้อมูล
    [Arguments]     ${Choice}
    [Documentation]     ใช้กรอกข้อมูล ชื่อ-นามสกุล หรือ รหัสนิสิต
    Input Text      ${text_search}      ${Choice}
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้กดปุ่มต่างๆ
    Click Button    ${Choicebtn}   
กดลิงค์
    [Arguments]     ${ChoiceLink}
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${ChoiceLink}  

***Test Cases***
TC-PSF-04-03-01 ตรวจสอบการทำงานของปุ่มค้นหา
    เปิดหน้าจอ
    กรอกข้อมูล    ${name_search}
    กดปุ่ม    ${bt_search}
TC-PSF-04-03-02 ตรวจสอบการทำงานของปุ่มเพิ่มข้อมูล
    เปิดหน้าจอ
    กดปุ่ม    ${bt_add}
TC-PSF-04-03-03 ตรวจสอบการทำงานของปุ่มแก้ไข
    เปิดหน้าจอ
    กดลิงค์   ${bt_edit}
TC-PSF-04-03-04 ตรวจสอบการทำงานของปุ่มลบ
    เปิดหน้าจอ
    กดลิงค์   ${bt_del} 

