*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${VERIFY_LOGIN_PAGE} =                  Login
${SIGNIN_EMAIL_TEXTBOX} =               //input[@id='email-id']
${SIGNIN_PASSWORD_TEXTBOX} =            //input[@id='password']
${REMEMBER_CHECKBOX} =                  //input[@id='remember']
${SUBMIT_BUTTON} =                      //button[@id='submit-id']
*** Keywords ***
Verify Page Loaded
    wait until page contains            ${VERIFY_LOGIN_PAGE}

Login With Valid Credentials
    [Arguments]     ${Email}       ${Password}
    Fill Email Field        ${Email}
    Fill Password Field     ${Password}
    Click "Remember" Button
    Click "Submit" Button

Fill Email Field
    [Arguments]    ${Email}
    input text                           ${SIGNIN_EMAIL_TEXTBOX}           ${Email}

Fill Password Field
    [Arguments]    ${Password}
    input text                           ${SIGNIN_PASSWORD_TEXTBOX}         ${Password}

Click "Remember" Button
    select checkbox                      ${REMEMBER_CHECKBOX}

Click "Submit" Button
    click button                         ${SUBMIT_BUTTON}

