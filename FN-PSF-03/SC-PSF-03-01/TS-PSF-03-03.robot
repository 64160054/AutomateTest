*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}     http://127.0.0.1:8080/manageStudentConsider
${web_browser}  chrome
${txt_searchuser}     searchuser
${user_name}     สมพง
${std_id}    63160254
${bt_search}      btnsearch
${bt_add}   btnAdd
${bt_edit}  xpath=//a[@href="/manageCon_edit/1"]
${bt_del}   xpath=//a[@href="/delCon/1"]

*** Keywords ***
เปิดหน้าจอ
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Arguments]     ${Choicebtn}
    [Documentation]     ใช้สำหรับกดปุ่มต่างๆ
    Click Button    ${Choicebtn} 
กรอกข้อมูลค้นหา
    [Arguments]     ${Choice}
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_searchuser}    ${Choice}
กดลิงค์
    [Arguments]     ${Choice}
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${Choice}

***Test Cases***
TC-PSF-03-03-01 ตรวจสอบการทำงานของปุ่มค้นหา
    เปิดหน้าจอ
    กรอกข้อมูลค้นหา    ${user_name} 
    กดปุ่ม    ${bt_search}    
TC-PSF-03-03-02 ตรวจสอบการทำงานของปุ่มเพิ่มข้อมูล
    เปิดหน้าจอ
    กดปุ่ม    ${bt_add}    
TC-PSF-03-03-03 ตรวจสอบการทำงานของปุ่มแก้ไข
    เปิดหน้าจอ
    กดลิงค์   ${bt_edit}  
TC-PSF-03-03-04 ตรวจสอบการทำงานของปุ่มลบ   
    เปิดหน้าจอ
    กดลิงค์   ${bt_del} 