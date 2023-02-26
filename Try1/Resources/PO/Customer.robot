*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CUSTOMER_HEADER_LABEL} =               Our Happy Customers
${ADD_NEW_CUSTOMER_LINK} =               //a[@id='new-customer']
${SUCCESS_CUSTOMER_LABEL} =              Success! New customer added.

*** Keywords ***
Verify Customer page
    wait until page contains             ${CUSTOMER_HEADER_LABEL}

Click Add Customer Link
    click link                           ${ADD_NEW_CUSTOMER_LINK}

Verify Customer Added Successfully
    wait until page contains             ${SUCCESS_CUSTOMER_LABEL}