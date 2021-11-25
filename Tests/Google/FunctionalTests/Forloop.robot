*** Settings ***
Documentation  This is to test for loops
Library  SeleniumLibrary
*** Variables ***
${list1}  Vasanth ${\n}
*** Test Cases ***
Forloop1
#    log to console  The name is ${list1}

    FOR  ${x}  IN RANGE  1  10
        log to console  ${x}
    END
Forloop2

    FOR  ${x}  IN  1 2 3 4 5
        log to console  ${x}
    END

Forloop3

    ${itemlist}   create list  1 2 3 4 5 6
        FOR  ${i}  IN  ${itemlist}
            log to console  ${i}
        END

Forloop4

    FOR  ${j}  IN RANGE  20
          log to console  ${j}
          Exit For Loop If  ${j}==10
    END
*** Keywords ***
