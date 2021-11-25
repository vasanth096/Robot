*** Settings ***
Documentation  This is a test to handle alerts
Library  SeleniumLibrary

*** Variables ***
${url}  http://demo.guru99.com/test/delete_customer.php
*** Test Cases ***
Testing alerts

    create webdriver  Chrome  executable_path=/Users/vasanth/Downloads/chromedriverr
    go to  ${url}
    input text   cusid  123
    click element  name:submit
    handle alert  accept
#    oen context menu  xpath:  Right click
#     double click element  xpath Double click
#     drag and drop  from  to
#    execute javascript  window.scrollTo(0,2500)
#    scroll element into view  xpath:
#    execute javascript  window.scrollTo(0,document.body.scrollHeight)
*** Keywords ***
