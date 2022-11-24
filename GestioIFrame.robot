*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Tes IFrame
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    gc
    Maximize Browser Window
    Select Frame    name=packageListFrame
    Click Link    //a[@href="org/openqa/selenium/package-frame.html"]
    Unselect Frame
    Select Frame    name=packageFrame
    Click Link    WebDriver
    Unselect Frame
    Sleep    2
    Select Frame    classFrame
    Click Link    Help
    Close Browser