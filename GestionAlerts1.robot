*** Settings ***
Library    Selenium2Library
*** Variables ***
*** Test Cases ***
Tes Gere Alerts
    Open Browser    http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Click Button    id=alert1
    #Alert Should Be Present    Hello
    Sleep    2
    Handle Alert
    Click Button    id=prompt
    ${MessageAlert}    Handle Alert
    Should Be Equal    ${MessageAlert}    What is your name?
    Log To Console    ${MessageAlert}
    ${recupereURL}    Get Location
    Log To Console    ${recupereURL}
    Sleep    3
    Close Browser

    