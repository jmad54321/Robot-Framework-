*** Settings ***
Library                  SeleniumLibrary

*** Variables ***
${VERIFY_LOGGED_OUT_PAGE} =              Thank you for using the CRM. See you next time!

*** Keywords ***
Verify Page Loaded
    wait until page contains              ${VERIFY_LOGGED_OUT_PAGE}