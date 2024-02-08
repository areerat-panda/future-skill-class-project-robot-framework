*** Settings ***
Library  SeleniumLibrary
Resource  ../Keyword/HomePageKeywords.robot
Resource  ../Keyword/RegisterPageKeywords.robot
Resource  ../Keyword/RegisterOTPPageKeywords.robot
Variables  ../Resource/config.yaml
Variables  ../Resource/test_data.yaml
Suite Setup  Open Browser  ${baseurl}  chrome
Suite Teardown  Close Browser


*** Test Cases ***
Test case to register member on web Future skill
  [Documentation]  Test case to register member on web Future skill

  HomePageKeywords.Click register button
  RegisterPageKeywords.Fill Email  ${email}
  RegisterPageKeywords.Fill Name    ${name}
  RegisterPageKeywords.Fill Lastname    ${lastname}
  RegisterPageKeywords.Fill Phone Number    ${phone_number}
  RegisterPageKeywords.Fill Password and Fill Confirm Password    ${password}    ${confirm_password}
  RegisterPageKeywords.Click Accept Term And Condition
  RegisterPageKeywords.Click Register Button
  RegisterOTPPageKeywords.Assert Page Should Contain Text  ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์









