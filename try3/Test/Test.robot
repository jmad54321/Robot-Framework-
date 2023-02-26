*** Settings ***
Documentation      My 3rd Non-guided Test
Library            SeleniumLibrary
Resource           ../Resources/Common.robot
Resource           ../Resources/Testapp.robot
Test Setup         Begin Web Test
Test Teardown      End Web Test

*** Variables ***
${URL} =                        https://automationplayground.com/crm/
${BROWSER} =                    edge
${VALID_LOGIN_EMAIL} =          JohnDaria@yahoo.com
${VALID_LOGIN_PASSWORD} =       ajari

*** Test Cases ***
Go To "HOME" page
    Testapp.Go to "HOME" page

Logging In With Valid Credentials
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Customer Page Successfully Loaded
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Testapp.customer page

Viewing Customer Profile
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Testapp.customer page
    Testapp.View A Customer Profile
    Testapp.Signing Out


Adding New Customers
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Testapp.customer page
    Testapp.Adding A New Customer

Signing Out
    Testapp.Go to "HOME" page
    Testapp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Testapp.customer page
    Testapp.Signing Out





