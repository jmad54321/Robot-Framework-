*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =           Add Customer
${ADDCUSTOMER_EMAIL_ADRESS_LABEL} =     //input[@id='EmailAddress']
${ADDCUSTOMER_FIRST_NAME_LABEL} =       //input[@id='FirstName']
${ADDCUSTOMER_LAST_NAME_LABEL} =        //input[@id='LastName']
${ADDCUSTOMER_CITY_LABEL} =             //input[@id='City']
${ADDCUSTOMER_STATE_LABEL} =            //select[@id='StateOrRegion']
${ADDCUSTOMER_GENDER_LABEL} =           gender
${ADDCUSTOMER_CHECKBOX_LABEL} =         //input[@name='promos-name']
${ADDCUSTOMER_SUBMIT_BUTTON} =          //button[@type='submit']

*** Keywords ***
Verify Page Loaded
    wait until page contains             ${ADDCUSTOMER_HEADER_LABEL}

Adding A New Customer
    input text                           ${ADDCUSTOMER_EMAIL_ADRESS_LABEL}     moises@yahoo.com
    input text                           ${ADDCUSTOMER_FIRST_NAME_LABEL}       John
    input text                           ${ADDCUSTOMER_LAST_NAME_LABEL}        Daria
    input text                           ${ADDCUSTOMER_CITY_LABEL}             Quezon
    select from list by value            ${ADDCUSTOMER_STATE_LABEL}            NY
    select radio button                  ${ADDCUSTOMER_GENDER_LABEL}           male
    select checkbox                      ${ADDCUSTOMER_CHECKBOX_LABEL}
    click button                         ${ADDCUSTOMER_SUBMIT_BUTTON}
