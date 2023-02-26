*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${SIGNIN_HEADER_LABEL} =        Login
${SIGNIN_EMAIL_LABEL} =         id=email-id
${SIGNIN_PASSWORD_LABEL} =      id=password
${SIGNIN_CHECKBOX} =            id=remember
${SIGNIN_SUBMIT_BUTTON} =       id=submit-id

*** Keywords ***
Verify Page Loaded
    wait until page contains     ${SIGNIN_HEADER_LABEL}

Login With Valid Credential
    [Arguments]    ${Email}     ${Password}
    fill email field        ${Email}
    fill password field     ${Password}
    Selecting Checkbox
    Click "Submit" Butoon


Fill Email Field
    [Arguments]    ${Email}
     input text                  ${SIGNIN_EMAIL_LABEL}          moisesdaria@yahoo.com
Fill Password Field
    [Arguments]    ${Password}
    input text                   ${SIGNIN_PASSWORD_LABEL}           relapse
Selecting Checkbox
    select checkbox              ${SIGNIN_CHECKBOX}
Click "Submit" Butoon
    click button                 ${SIGNIN_SUBMIT_BUTTON}