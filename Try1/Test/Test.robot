*** Settings ***
Documentation              My First non guided robot framework
Library                    SeleniumLibrary
Resource                   ../Resources/common.robot
Resource                   ../Resources/Testapp.robot
Test Setup                 Begin Web Test
Test Teardown              End Web Test

*** Variables ***
${BROWSER} =                             edge
${URL} =                                 https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =                   Johnmoises@yahoo.com
${VALID_LOGIN_PASSWORD} =                itsnotmeitsyou

*** Test Cases ***
Home page should load
    [Documentation]     Testing if the Home page will load
    [Tags]              1001
    Testapp.Go to "HOME" page

Login page should load
    [Documentation]     Testing if login page will load
    [Tags]              1002
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}

Login page should load
    [Documentation]     Testing if the system is able to add customer
    [Tags]              1002
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    Testapp.Add New Customer
    Testapp.Signout


