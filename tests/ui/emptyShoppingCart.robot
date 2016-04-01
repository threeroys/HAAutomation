*** Settings ***
Documentation    Verify removing all items from your cart produces an empty cart message.
Resource    ../../uiResources/homePage.robot
Resource    ../../uiResources/productPage.robot
Resource    ../../uiResources/checkoutPage.robot

*** Test Cases ***
Verify Empty Shopping Cart
    Open Browser to Home Page
    Search Products     iphone 4s 16 black
    Select Product      Apple iPhone 4S 16GB SIM-Free – Black
    Add Product to Cart from Product Page
    Prooceed to Checkout
    Remove Final Item From Cart
    Verify Empty Cart

    [Teardown]  Close Browser