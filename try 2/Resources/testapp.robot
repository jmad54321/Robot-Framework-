*** Settings ***
Resource            ../Resources/PO/Addcustomer.robot
Resource            ../Resources/PO/Customer.robot
Resource            ../Resources/PO/Homepage.robot
Resource            ../Resources/PO/Loggedout.robot
Resource            ../Resources/PO/Signin.robot
Resource            ../Resources/PO/TopNav.robot


*** Variables ***


*** Keywords ***
Go To "Home" Page
     homepage.navigate to
     homepage.verify page loaded

Login With Valid Credentials
     [Arguments]    ${Email}    ${Password}
     TopNav.Click "Sign In" Link
     Signin.Verify Page Loaded
     Signin.Login With Valid Credential         ${Email}        ${Password}

Customer Page
     Customer.Verify Page Loaded

Viewing Customer Profiles
     Customer.Checking Listed Profiles

Adding A New Customer
      Customer.Clicking "Add New Customer" link
      Addcustomer.Verify Page Loaded
      Addcustomer.Adding A New Customer
      Customer.Verify New Customer Added

Logging Out
      TopNav.Click "Sign Out" Link
      Loggedout.Verify Page Loaded