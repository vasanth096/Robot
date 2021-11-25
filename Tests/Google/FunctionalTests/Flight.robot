*** Settings ***
Documentation  This is a test for flight reservation
Library  SeleniumLibrary

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/reservation.php

*** Test Cases ***
Flight Details
    create webdriver  Chrome  executable_path=/Users/vasanth/Downloads/chromedriverr
    go to  ${url}
    maximize browser window
    Flight details
    close browser

*** Keywords ***
Flight details
    select radio button  tripType  oneway
    select from list by value  passCount  2
    select from list by index  fromPort  3
    select from list by label  fromMonth  August
    select from list by value  fromDay  4
    select from list by value  toPort  Paris
    select from list by label  toMonth  September
    select from list by value  toDay  6
    page should contain radio button  servClass
    select radio button  servClass  Business
    select from list by index  airline  1
    click image  findFlights
    page should contain    After flight finder - No Seats Avaialble