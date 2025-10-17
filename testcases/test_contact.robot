*** Settings ***
Resource    ../resources/keywords.robot


*** Test Cases ***
Test Contact
    Open DemoBlaze
    Contact Us
    Close DemoBlaze