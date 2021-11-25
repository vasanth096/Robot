*** Settings ***
Documentation  This is a login test
Library  SeleniumLibrary
*** Variables ***
${url}   https://demo.guru99.com/test/newtours/index.php
*** Test Cases ***
Login Test
    create webdriver  Chrome  executable_path=/Users/vasanth/Downloads/chromedriverr
    go to  ${url}
    logintoapp
    close browser


*** Keywords ***
logintoapp
    maximize browser window
    input text  name:userName  mercury
    input text  name:password  mercury
    click element  name:submit
    page should contain  Login Successfully