*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Fill Email
  [Arguments]  ${email}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[1]/div/div[1]/input  ${email}

Fill Name
  [Arguments]  ${name}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[1]/div/div[1]/input    ${name}

Fill Lastname
  [Arguments]  ${lastname}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[2]/div/div[1]/input    ${lastname}

Fill Phone Number
  [Arguments]  ${phone_number}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[3]/div/div[1]/input    ${phone_number}

Fill Password and Fill Confirm Password
  [Arguments]  ${password}  ${confirm_password}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[4]/div/div[1]/input    ${password}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[5]/div/div[1]/input    ${confirm_password}

Click Accept Term And Condition
  Click Element    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input

Click Register Button
  Click Element    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button
  Sleep    4s

