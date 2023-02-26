*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${VERIFY_HOMEPAGE_LOADED} =     Customers Are Priority One!

*** Keywords ***
Navigate to
       go to                      ${URL}

Verify Page Loaded
    wait until page contains     ${VERIFY_HOMEPAGE_LOADED}