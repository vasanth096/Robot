*** Settings ***
Documentation  This is a test for Google
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a sample test case

    create webdriver  Chrome  executable_path=/Users/vasanth/Downloads/chromedriverr
    go to  https://google.com
    maximize browser window
    title should be  Google

*** Keywords ***