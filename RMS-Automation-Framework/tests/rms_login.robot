*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot
Resource   ../resources/variables.robot

*** Test Cases ***
RMS Login Test
    Open RMS Application
    Login To RMS
    Verify Login Success
    Close Browser