*** Settings ***
Library    Selenium2Library
*** Variables ***
*** Test Cases ***
Tes Gere Alerts
    Open Browser    http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Click Button    id=alert1
    Alert Should Be Present    Hello
    Sleep    2
    #Handle Alert
    Click Button    id=prompt
    Handle Alert    DISMISS
    Sleep    3
    Close Browser

    