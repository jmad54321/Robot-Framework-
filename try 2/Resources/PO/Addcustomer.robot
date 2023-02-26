*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =       Add Customer
${ADDCUSTOMER_EMAIL_LABEL} =        id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_LABEL} =   id=FirstName
${ADDCUSTOMER_LAST_NAME_LABEL} =    id=LastName
${ADDCUSTOMER_CITY_LABEL} =         id=City
${ADDCUSTOMER_STATE_LABEL} =        id=StateOrRegion
${ADDCUSTOMER_RADIO_BUTTON} =       gender
${ADDCUSTOMER_CHECKBOX} =           promos-name
${ADDCUSTOMER_SUBMIT} =             Submit

*** Keywords ***
Verify Page Loaded
    wait until page contains     ${ADDCUSTOMER_HEADER_LABEL}

Adding A New Customer
    input text                   ${ADDCUSTOMER_EMAIL_LABEL}                daria@yahoo.com
    input text                   ${ADDCUSTOMER_FIRST_NAME_LABEL}           John
    input text                   ${ADDCUSTOMER_LAST_NAME_LABEL}            Daria
    input text                   ${ADDCUSTOMER_CITY_LABEL}                 Quezon City
    select from list by value    ${ADDCUSTOMER_STATE_LABEL}                HI
    select radio button          ${ADDCUSTOMER_RADIO_BUTTON}               male
    select checkbox              ${ADDCUSTOMER_CHECKBOX}
    click button                 ${ADDCUSTOMER_SUBMIT}