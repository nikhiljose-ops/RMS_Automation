*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open RMS Application
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    Call Method    ${options}    add_argument    --allow-insecure-localhost
    Call Method    ${options}    add_argument    --start-maximized

    Create Webdriver    Chrome    options=${options}
    Go To    ${URL}

Login To RMS
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button  xpath=//button
    Sleep    3s

Verify Login Success
    Capture Page Screenshot