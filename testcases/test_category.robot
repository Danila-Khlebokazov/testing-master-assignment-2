*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Test Category Filter
    Open DemoBlaze
    Category Filter
    Close DemoBlaze

