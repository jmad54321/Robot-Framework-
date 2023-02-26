*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${VERIFY_LOGGED_OUT} =          Signed Out

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${VERIFY_LOGGED_OUT}