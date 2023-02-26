*** Settings ***
Library                  SeleniumLibrary

*** Variables ***
${SIGN_IN_LINK} =               id=SignIn
${SIGN_OUT_LINK} =              Sign Out

*** Keywords ***
Click "SIGN IN" Link
    click link                    ${SIGN_IN_LINK}

Click "SIGN OUT" LINK
    click link                    ${SIGN_OUT_LINK}