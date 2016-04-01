*** Settings ***
Documentation    Resources and High Level Keywork functions to interact with the Individual Proudct Pages

Library     Selenium2Library
Variables   variables.py
Variables   pathLibrary.py

*** Keywords ***
Select Product
    [Arguments]     ${PRODUCTTITLE}
    Selenium2Library.Click Element   xpath=//*[@class='prodtitle']//*[@title='${PRODUCTTITLE}']
    wait until element is visible   xpath=${ADDTOCART}

Add Product to Cart from Product Page
    Click Button   xpath=${ADDTOCART}
    wait until element is visible   xpath=${GOTOCHECKOUT}


Prooceed to Checkout
    Selenium2Library.Click Element   xpath=${GOTOCHECKOUT}
    wait until element is visible   xpath=${CHECKOUTCARTTABLE}