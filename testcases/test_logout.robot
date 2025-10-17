*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Test Log Out
    Open DemoBlaze
    Log In User
    Log Out User
    Page Should Contain Element    ${LOGIN_BTN}
    Close DemoBlaze