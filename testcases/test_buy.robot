*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Test Buy Product
    Open DemoBlaze
    Log In User
    Buy Product
    Page Should Contain    Thank you for your purchase!
    Close DemoBlaze

