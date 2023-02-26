*** Settings ***
Library                  SeleniumLibrary

*** Variables ***
${SIGNIN_HEADER_LABEL} =         Login
${SIGNIN_EMAIL_LABEL} =          id=email-id
${SIGNIN_PASSWORD_LABEL} =       id=password
${SIGNIN_SUBMIT_LABEL} =         id=submit-id

*** Keywords ***
Verify Page Loaded
    wait until page contains      ${SIGNIN_HEADER_LABEL}

Login With Valid Credentials
    [Arguments]     ${Email}    ${Password}
    Fill Email Field              ${Email}
    Fill Password Field           ${Password}
    Click "Submit" Button

Fill Email Field
    [Arguments]    ${Email}
    input text                   ${SIGNIN_EMAIL_LABEL}      JohnDaria@yahoo.com
Fill Password Field
    [Arguments]    ${Password}
    input text                   ${SIGNIN_PASSWORD_LABEL}      ajari
Click "Submit" Button
     click button                ${SIGNIN_SUBMIT_LABEL}