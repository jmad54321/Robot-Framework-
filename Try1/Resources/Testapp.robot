*** Settings ***
Resource            ../Resources/PO/Addcustomer.robot
Resource            ../Resources/PO/Home.robot
Resource            ../Resources/PO/Signin.robot
Resource            ../Resources/PO/TopNav.robot
Resource            ../Resources/PO/Customer.robot
Resource            ../Resources/PO/Loggedout.robot

*** Keywords ***
Go to "HOME" page
    Home.navigate to
    Home.verify page loaded

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "SIGN IN" link
    Signin.Verify Page Loaded
    Signin.Login With Valid Credentials     ${Email}        ${Password}

Add New Customer
    Customer.Verify Customer page
    Customer.Click Add Customer Link
    Addcustomer.Verify Page Loaded
    Addcustomer.Adding A New Customer
    Customer.Verify Customer Added Successfully

Signout
    TopNav.Click "SIGN OUT" Link
    loggedout.verify signed out page
