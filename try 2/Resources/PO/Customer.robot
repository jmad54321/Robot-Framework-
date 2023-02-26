*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${VERIFY_CUSTOMER_PAGE_LODEAD} =    Our Happy Customers
${VIEWING_CUSTOMER_PROFILE} =       //tbody/tr[1]/td[5]/a[1]/i[1]
${VERIFY_CUSTOMER_PROFILE} =        Ashley Jacobs
${EXITING_CUSTOMER_PROFILE} =       id=customers
${VERIFY_NEW_CUSTOMER_ADDED} =      Success! New customer added.
${CLICKING_NEW_CUSTOMER} =          id=new-customer


*** Keywords ***
Verify Page Loaded
    wait until page contains     ${VERIFY_CUSTOMER_PAGE_LODEAD}

Checking Listed Profiles
    click element                ${VIEWING_CUSTOMER_PROFILE}
    wait until page contains     ${VERIFY_CUSTOMER_PROFILE}
    click link                   ${EXITING_CUSTOMER_PROFILE}

Clicking "Add New Customer" link
    click link                   ${CLICKING_NEW_CUSTOMER}
Verify New Customer Added
    wait until page contains     ${VERIFY_NEW_CUSTOMER_ADDED}