*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${VERIFY_HOME_PAGE} =           Customers Are Priority One!
*** Keywords ***
Navigate to
    go to                       ${URL}

Verify Page Loaded
    wait until page contains    ${VERIFY_HOME_PAGE}
