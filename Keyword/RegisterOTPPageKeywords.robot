*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Assert Page Should Contain Text
  [Arguments]  ${expected_text}
  Page Should Contain  ${expected_text}

