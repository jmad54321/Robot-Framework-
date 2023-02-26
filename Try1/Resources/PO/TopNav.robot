*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SIGN_IN_LNIK} =     //a[@id='SignIn']
${SIGN_OUT_LINK} =    //a[@class='nav-link']
*** Keywords ***
Click "SIGN IN" link
    click link                           ${SIGN_IN_LNIK}

Click "SIGN OUT" Link
    click link                           ${SIGN_OUT_LINK}