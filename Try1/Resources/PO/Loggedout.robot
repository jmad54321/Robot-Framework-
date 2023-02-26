*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGGED_OUT_LABEL} =              Thank you for using the CRM. See you next time!

*** Keywords ***
Verify Signed Out Page
    wait until page contains       ${LOGGED_OUT_LABEL}