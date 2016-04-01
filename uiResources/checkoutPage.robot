*** Settings ***
Documentation    Resources and High Level Keywork functions to interact with the Checkout Pages

Library     Selenium2Library
Variables   variables.py
Variables   pathLibrary.py

*** Keywords ***
Continue Checkout
    Selenium2Library.Click Element    xpath=${CARTCONTINUEBUTTON}
    wait until element is visible   xpath=${CHANGECOUNTRY}

Complete Checkout Form
    [Arguments]     ${FIRST}  ${LAST}  ${ADDRESS}  ${CITY}  ${STATE}  ${COUNTRY}  ${ZIP}  ${PHONE}
    Click Element                   xpath=${SHIPPINGCOUNTRY}
    Click Element                   xpath=${SHIPPINGCOUNTRYSELECTION}
    Click Element                   xpath=${CALCULATEBUTTON}
    wait until element is visible   xpath=${TOTALFIELD}

    Input Text      xpath=${FIRSTNAMEFIELD}      ${FIRST}
    Input Text      xpath=${LASTNAMEFIELD}       ${LAST}
    Input Text      xpath=${ADDRESSFIELD}        ${ADDRESS}
    Input Text      xpath=${CITYFIELD}           ${CITY}
    Input Text      xpath=${STATEFIELD}          ${STATE}
    Input Text      xpath=${ZIPFIELD}            ${ZIP}
    Input Text      xpath=${PHONEFIELD}          ${PHONE}


Set Shipping Same as Billing Address
    Click Element   xpath=${SHIPPINGCHECKBOX}


Verify Total Amount
    [Arguments]     ${EXPECTEDTOTAL}
    Element Text Should Be      xpath=${TOTALFIELD}     ${EXPECTEDTOTAL}


Complete Purchase
    Selenium2Library.Click Element  xpath=${PURCHASEBUTTON}

Remove Final Item From Cart
    Click Element   xpath=${REMOVEITEMBUTTON}

Verify Empty Cart
    Element Should Not Be Visible   xpath=${REMOVEITEMBUTTON}
    Element Text Should Be          xpath=${CHECKOUTBOX}    ${EMPTYCARTMESSAGE}