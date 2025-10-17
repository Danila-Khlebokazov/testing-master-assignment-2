*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Test Sign Up
    Open DemoBlaze
    Sign Up New User
    Close DemoBlaze