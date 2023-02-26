*** Settings ***
Library                  SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABLE} =       Add Customer
${ADDCUSTOMER_EMAIL_LABLE} =        id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_LABLE} =   id=FirstName
${ADDCUSTOMER_LAST_NAME_LABLE} =    id=LastName
${ADDCUSTOMER_CITY_LABLE} =         id=City
${ADDCUSTOMER_STATE_LABLE} =        id=StateOrRegion
${ADDCUSTOMER_RADIO_BUTTON} =       gender
${ADDCUSTOMER_CHECKBOX} =           promos-name
${ADDCUSTOMER_SUBMIT_BUTTON} =      Submit

*** Keywords ***
Verify Page Loaded
    wait until page contains        ${ADDCUSTOMER_HEADER_LABLE}

Adding A New Customer
    input text                      ${ADDCUSTOMER_EMAIL_LABLE}            ajari@yahoo.com
    input text                      ${ADDCUSTOMER_FIRST_NAME_LABLE}       John
    input text                      ${ADDCUSTOMER_LAST_NAME_LABLE}        Daria
    input text                      ${ADDCUSTOMER_CITY_LABLE}             Quezon City
    select from list by value       ${ADDCUSTOMER_STATE_LABLE}            CA
    select radio button             ${ADDCUSTOMER_RADIO_BUTTON}           male
    select checkbox                 ${ADDCUSTOMER_CHECKBOX}
    click button                    ${ADDCUSTOMER_SUBMIT_BUTTON}