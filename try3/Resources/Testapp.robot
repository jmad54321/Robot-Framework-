*** Settings ***
Resource        ../Resources/PO/Home.robot
Resource        ../Resources/PO/Addcustomer.robot
Resource        ../Resources/PO/Customer.robot
Resource        ../Resources/PO/Signin.robot
Resource        ../Resources/PO/TopNav.robot
Resource        ../Resources/PO/Loggedout.robot
*** Variables ***


*** Keywords ***
Go to "HOME" page
    Home.Navigate To "HOME PAGE"
    Home.Verify Page Loaded

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "SIGN IN" Link
    Signin.Verify Page Loaded
    Signin.Login With Valid Credentials    ${Email}    ${Password}

Customer Page
    Customer.Verify Page Loaded

View A Customer Profile
    Customer.Checking A Customer Profile

Adding A New Customer
    Customer.Click "ADD CUSTOMER" Button
    Addcustomer.Verify Page Loaded
    Addcustomer.Adding A New Customer
    Customer.Verify "NEW CUSTOMER"

Signing Out
    TopNav.Click "SIGN OUT" LINK
    Loggedout.Verify Page Loaded

