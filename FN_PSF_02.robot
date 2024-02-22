*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL_page}    http://127.0.0.1:8080/manageUser
${URL_page2}    http://127.0.0.1:8080/
${URL_page3}    http://127.0.0.1:8080/manageUser_add
${URL_page4}    http://127.0.0.1:8080/manageUser_edit/1
${web_browser}  chrome
${txt_user1}    email
${txt_user}     searchuser
${txt_adduser}     username
${txt_addSurUser}     nameuser
${txt_pass}     password
${txt_addpass}     password
${bt_Login}      btnok
${bt_search}      btnsearch
${bt_add}      btnAdd
${bt_submit}    ok
${bt_cancel}    cancel
${LinkEdit1}     xpath=//a[@href="/manageUser_edit/1"]
${LinkDelete1}     xpath=//a[@href="/delUser/1"]
${user_name1}     pichet
${user_name2}     พิเชษ
${user_name3}    วะยะลุน
${user_name4}   2222222222222222222222222222222222222222222222222222
${user_name5}     somnuk
${user_name6}   nawapat
${user_name7}   นวพรรษ สีหาบุตร1
${user_name8}   นวพรรษ สีหาบุตร
${user_name9}   nwpatt
${user_name10}   yakuza
${user_name11}  ยาคูลท์ ปันสุข
${pass_name1}    123456
${pass_name2}    1234567
${txt_position}    statusUser
${position_name}    อาจารย์
${position_name2}    เจ้าหน้าที่
${LinkDelete19}     xpath=//a[@href="/delUser/19"]
*** Keywords ***
เปิดหน้าจอ
    [Arguments]     ${URL_page}
    [Documentation]     ใช้เปิดหน้าจอ และชื่อ Browser ที่ใช้เปิด
    Open Browser    ${URL_page}     ${web_browser}
กดปุ่ม
    [Arguments]     ${btn}
    [Documentation]     ใช้สำหรับกดปุ่มเข้าสู่ระบบ
    Click Button    ${btn}  
กรอกข้อมูล 
    [Arguments]     ${user_name}
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_user}     ${user_name}
กดลิงค์
    [Arguments]     ${Choice}
    [Documentation]     ใช้สำหรับกดลิงค์รูป
    Click Link      ${Choice}
กรอกข้อมูลเข้าสู่ระบบ 
    [Arguments]     ${user_name}    ${pass_name}
    [Documentation]     ใช้กรอกข้อมูล username
    Input Text      ${txt_user1}     ${user_name}
    Input Text      ${txt_pass}     ${pass_name}
เพิ่มข้อมูลผู้ใช้งาน
    [Arguments]     ${txt_adduser}  ${user_name6}
    [Documentation]     ใช้เพิ่มข้อมูลผู้ใช้งาน โดยการกรอกข้อมูล 
    Input Text  ${txt_adduser}  ${user_name6}
เลือกตำแหน่ง
    [Arguments]     ${txt_position}     ${position_name}
    [Documentation]     ใช้เพิ่มข้อมูลผู้ใช้งาน โดยการเลือกตำแหน่ง
    Select From List By Label   ${txt_position}     ${position_name} 
***Test Cases***
TC-PSF-02-01-01 ตรวจสอบการกรอกข้อมูลค้นหาจากชื่อผู้ใช้
    เปิดหน้าจอ    ${URL_page}
    กรอกข้อมูล    ${user_name1}
    กดปุ่ม    ${bt_search}
TC-PSF-02-01-02 ตรวจสอบการกรอกข้อมูลค้นหาจากชื่อ
    เปิดหน้าจอ    ${URL_page}
    กรอกข้อมูล    ${user_name2} 
    กดปุ่ม    ${bt_search}
TC-PSF-02-01-03 ตรวจสอบการกรอกข้อมูลค้นหาจากนามสกุล
    เปิดหน้าจอ    ${URL_page}
    กรอกข้อมูล    ${user_name3}
    กดปุ่ม    ${bt_search}
TC-PSF-02-01-04 ตรวจสอบการกรอกข้อมูลค้นหา รับไม่เกิน 50 ตัวอักษร
    เปิดหน้าจอ    ${URL_page}
    กรอกข้อมูล    ${user_name4}
    กดปุ่ม    ${bt_search}
TC-PSF-02-02-01 ตรวจสอบการกดปุ่มค้นหา
    เปิดหน้าจอ    ${URL_page}
    กดปุ่ม    ${bt_search}
TC-PSF-02-02-02 ตรวจสอบการกดปุ่มเพิ่มข้อมูล
    เปิดหน้าจอ    ${URL_page}
    กดปุ่ม    ${bt_add}
TC-PSF-02-02-03 ตรวจสอบการกดปุ่มแก้ไขข้อมูล //ปุ่มแก้ไขควรมาก่อนลบ ไม่งั้นมันจะลบก่อน ใน case แรก พอไป case 2 มันจะเรียกดูไม่ได้ 
    เปิดหน้าจอ    ${URL_page}
    กดลิงค์       ${LinkEdit1}  
TC-PSF-02-02-04 ตรวจสอบการกดปุ่มลบข้อมูล //สลับกับบน
    เปิดหน้าจอ    ${URL_page}
    กดลิงค์       ${LinkDelete1}          
TC-PSF-02-03-01 ตรวจสอบการแสดงผลข้อมูลรายชื่อผู้ใช้งาน สถานะอาจารย์ 
    เปิดหน้าจอ    ${URL_page2}
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name1}      ${pass_name1}
    กดปุ่ม    ${bt_Login} 
TC-PSF-02-03-02 ตรวจสอบการแสดงผลข้อมูลรายชื่อผู้ใช้งาน สถานะเจ้าหน้าที่ 
    เปิดหน้าจอ    ${URL_page2}
    กรอกข้อมูลเข้าสู่ระบบ    ${user_name5}      ${pass_name1}
    กดปุ่ม    ${bt_Login} 
TC-PSF-02-04-01 ตรวจสอบการกรอกข้อมูล ชื่อผู้ใช้ รับไม่เกินจำนวน 6 ตัวอักษรและไม่น้อยกว่า 6
    เปิดหน้าจอ    ${URL_page3}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_adduser}  ${user_name6}
TC-PSF-02-04-02 ตรวจสอบการกรอกข้อมูล รหัสผ่าน รับไม่เกินจำนวน 6 ตัวอักษรและไม่น้อยกว่า 6
    เปิดหน้าจอ    ${URL_page3}
    เพิ่มข้อมูลผู้ใช้งาน    ${txt_addpass}      ${pass_name2}
TC-PSF-02-04-03 ตรวจสอบการกรอกข้อมูล รหัสผ่าน รับข้อความที่กรอกไม่แสดงตัวอักษร
    เปิดหน้าจอ    ${URL_page3}
    เพิ่มข้อมูลผู้ใช้งาน    ${txt_addpass}      ${pass_name1}   
TC-PSF-02-04-04 ตรวจสอบการกรอก ชื่อ-นามสกุล ผู้ใช้
    เปิดหน้าจอ    ${URL_page3}
    เพิ่มข้อมูลผู้ใช้งาน    ${txt_addSurUser}      ${user_name7}
TC-PSF-02-05-01 ตรวจสอบการกดปุ่มบันทึกข้อมูล
    เปิดหน้าจอ    ${URL_page3}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_adduser}  ${user_name9}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addpass}      ${pass_name1} 
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addSurUser}      ${user_name8}
    เลือกตำแหน่ง       ${txt_position}     ${position_name} 
    กดปุ่ม    ${bt_submit}
TC-PSF-02-05-02 ตรวจสอบการกดปุ่มยกเลิก
    เปิดหน้าจอ    ${URL_page3}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_adduser}  ${user_name9}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addpass}      ${pass_name1} 
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addSurUser}      ${user_name8}
    เลือกตำแหน่ง       ${txt_position}     ${position_name} 
    กดปุ่ม    ${bt_cancel}  
TC-PSF-02-06-01 ตรวจสอบการเลือกข้อมูลของ Dropdown ตำแหน่งผู้ใช้งาน
    เปิดหน้าจอ    ${URL_page3}
    เลือกตำแหน่ง       ${txt_position}     ${position_name} 
TC-PSF-02-07-01 ตรวจสอบการกรอกข้อมูล ชื่อผู้ใช้ รับไม่เกินจำนวน 6 ตัวอักษรและไม่น้อยกว่า 6
    เปิดหน้าจอ    ${URL_page4}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_adduser}  ${user_name10}
TC-PSF-02-07-02 ตรวจสอบการกรอกข้อมูล รหัสผ่าน รับไม่เกินจำนวน 6 ตัวอักษรและไม่น้อยกว่า 6
    เปิดหน้าจอ    ${URL_page4}
    เพิ่มข้อมูลผู้ใช้งาน    ${txt_addpass}      ${pass_name1}
TC-PSF-02-07-03 ตรวจสอบการกรอกข้อมูล รหัสผ่าน รับข้อความที่กรอกไม่แสดงตัวอักษร
    เปิดหน้าจอ    ${URL_page4}
    เพิ่มข้อมูลผู้ใช้งาน    ${txt_addpass}      ${pass_name1} 
TC-PSF-02-07-04 ตรวจสอบการกรอกชื่อ-นามสกุลผู้ใช้ 
    เปิดหน้าจอ    ${URL_page4}
    เพิ่มข้อมูลผู้ใช้งาน    ${txt_addSurUser}      ${user_name11}
TC-PSF-02-08-01 ตรวจสอบการกดปุ่มบันทึกข้อมูล //เจ้าหน้าที่ไม่มี ในหน้าแก้ไข 
    เปิดหน้าจอ    ${URL_page4}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_adduser}  ${user_name10}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addpass}      ${pass_name1} 
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addSurUser}      ${user_name11}
    เลือกตำแหน่ง       ${txt_position}     ${position_name2} 
    กดปุ่ม    ${bt_submit}
TC-PSF-02-08-02 ตรวจสอบการกดปุ่มยกเลิก //เจ้าหน้าที่ไม่มี ในหน้าแก้ไข 
    เปิดหน้าจอ    ${URL_page4}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_adduser}  ${user_name10}
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addpass}      ${pass_name1} 
    เพิ่มข้อมูลผู้ใช้งาน   ${txt_addSurUser}      ${user_name11}
    เลือกตำแหน่ง       ${txt_position}     ${position_name2} 
    กดปุ่ม    ${bt_cancel} 
TC-PSF-02-09-01 ตรวจสอบการเลือกข้อมูลของ Dropdown ตำแหน่งผู้ใช้งาน
    เปิดหน้าจอ    ${URL_page4}
    เลือกตำแหน่ง       ${txt_position}     ${position_name} 
TC-PSF-02-10-01 ตรวจสอบการแสดงผลข้อมูล
    เปิดหน้าจอ    ${URL_page}
    กดลิงค์       ${LinkDelete15}
TC-PSF-02-11-01 ตรวจสอบปุ่มยกเลิก //ปุ่มยกเลิกควรมาก่อนตกลง ไม่งั้นมันจะลบก่อน ใน case แรก พอไป case 2 มันจะเรียกดูไม่ได้ 
    เปิดหน้าจอ    ${URL_page}
    กดลิงค์       ${LinkDelete19}
    กดปุ่ม    ${bt_cancel} 
TC-PSF-02-11-02 ตรวจสอบปุ่มตกลง //สลับกับบน
    เปิดหน้าจอ    ${URL_page}
    กดลิงค์       ${LinkDelete19}
    กดปุ่ม    ${bt_submit}   