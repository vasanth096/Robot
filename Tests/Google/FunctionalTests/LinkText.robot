*** Settings ***
Documentation  This is a test to count the links
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Countlink

    Create Webdriver  Chrome  executable_path=/Users/vasanth/Downloads/chromedriverr
    go to  http://demo.guru99.com/test/newtours/
    ${count}  Get Element Count    xpath://a
        Log To Console  ${count}

    @{linkitem}  Create List
    FOR  ${i}  IN RANGE  1  ${count}
        ${linktext}=   Get Text  xpath:(//a)[${i}]
        Log To Console  ${linktext}
    END
*** Keywords ***
