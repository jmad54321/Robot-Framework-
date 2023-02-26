*** Settings ***
Documentation   This is my 2nd non guided test
Library         SeleniumLibrary
Resource        ../Resources/common.robot
Resource        ../Resources/testapp.robot
Test Setup      Begin Web Test
Test Teardown   End Web Test

#robot -d Results test/test.robot

*** Variables ***
${BROWSER} =                     edge
${URL} =                         https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =           moisesdaria@yahoo.com
${VALID_LOGIN_PASSWORD} =        relapse
*** Test Cases ***
Go To "HOME" Page
    [Documentation]    This is my 2nd try on testing
    [Tags]
    testapp.Go To "Home" Page

Signing IN
    [Documentation]     This is my 2nd try on testing
    [Tags]              1001
    testapp.Go To "Home" Page
    testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}

Go To "CUSTOMER" Page
    [Documentation]     This is my 2nd try on testing
    [Tags]              1002
    testapp.Go To "Home" Page
    testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    testapp.Customer Page

Viewing A Customers Profile
    [Documentation]     This is my 2nd try on testing
    [Tags]              1003
    testapp.Go To "Home" Page
    testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    testapp.Customer Page
    testapp.Viewing Customer Profiles

Adding A New Customer
    [Documentation]     This is my 2nd try on testing
    [Tags]              1004
    testapp.Go To "Home" Page
    testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    testapp.Customer Page
    testapp.Adding A New Customer

Logging out
    [Documentation]     This is my 2nd try on testing
    [Tags]              1005
    testapp.Go To "Home" Page
    testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    testapp.Customer Page
    testapp.Adding A New Customer
    testapp.Logging Out




