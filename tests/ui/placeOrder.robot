*** Settings ***
Documentation    Submit an order for an Apple iPhone4s 16GB SIM-Free – Black (known issue with State drop-down, selecting Country is adequate) and verify the Total Price: given is correct (assume shipping cost is correct based on your choice). You may assume prices shown on product pages are the correct price.
Resource    ../../uiResources/homePage.robot
Resource    ../../uiResources/productPage.robot
Resource    ../../uiResources/checkoutPage.robot
Variables   ../../uiResources/variables.py

*** Test Cases ***
Order an iPhone 4s
    Open Browser to Home Page
    Search Products     iphone 4s 16 black
    Select Product      Apple iPhone 4S 16GB SIM-Free – Black
    Add Product to Cart from Product Page
    Prooceed to Checkout
    Continue Checkout
    Complete Checkout Form  ${FIRST}  ${LAST}  ${ADDRESS}  ${CITY}  ${STATE}  ${COUNTRY}  ${ZIP}  ${PHONE}
    Set Shipping Same as Billing Address
    Verify Total Amount     ${EXPECTEDTOTAL}
    Complete Purchase

    [Teardown]  Close Browser