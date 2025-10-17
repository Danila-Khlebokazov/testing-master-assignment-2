*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Test Log In
    Open DemoBlaze
    Log In User
    Page Should Contain Element    ${WELCOME_USER}
    Close DemoBlaze