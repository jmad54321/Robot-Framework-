*** Settings ***
Library                  SeleniumLibrary

*** Variables ***
${VERIFY_CUSTOMER_PAGE_LOADED} =    Our Happy Customers
${CLICK_VIEW_CUSTOMER_PAGE} =       //tbody/tr[1]/td[5]/a[1]/i[1]
${VERIFY_CUSTOMER_PAGE_USER} =      User Profile
${EXIT_CUSTOMER_PROFILE} =          id=customers
${CLICK_ADD_CUSTOMER_LINK} =        id=new-customer
${NEW_CUSTOMER_ADDED} =             Success! New customer added.

*** Keywords ***
Verify Page Loaded
    wait until page contains        ${VERIFY_CUSTOMER_PAGE_LOADED}

Checking A Customer Profile
    click element                   ${CLICK_VIEW_CUSTOMER_PAGE}
    wait until page contains        ${VERIFY_CUSTOMER_PAGE_USER}
    click link                      ${EXIT_CUSTOMER_PROFILE}

Click "ADD CUSTOMER" Button
    click link                      ${CLICK_ADD_CUSTOMER_LINK}

Verify "NEW CUSTOMER"
    wait until page contains        ${NEW_CUSTOMER_ADDED}