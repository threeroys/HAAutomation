*** Settings ***
Documentation    Resources and High Level Keywork functions to interact with the Account Login Page

Library     Selenium2Library
Variables   variables.py
Variables   pathLibrary.py

*** Keywords ***
Open Browser to Login Page and Login
    [Arguments]     ${USERNAME}     ${PASSWORD}
    Open Browser                    http://store.demoqa.com/products-page/your-account/    chrome
    Maximize Browser Window
    wait until element is visible   xpath=${ACCOUNTUSERNAME}
    Title Should be                 Your Account | ONLINE STORE
    Input Text                      xpath=${ACCOUNTUSERNAME}    ${USERNAME}
    Input Text                      xpath=${ACCOUNTPASSWORD}     ${PASSWORD}
    Click Element                   xpath=${LOGINBUTTON}
    wait until element is visible   xpath=${YOURDETAILS}

Open Account Details
    Click Element                      xpath=${YOURDETAILS}

Logout
    Click Element   xpath=${LOGOUTLINK}

Login
    [Arguments]     ${USERNAME}     ${PASSWORD}
    wait until element is visible   xpath=${ACCOUNTUSERNAME}
    Input Text                      xpath=${ACCOUNTUSERNAME}    ${USERNAME}
    Input Text                      xpath=${ACCOUNTPASSWORD}     ${PASSWORD}
    Click Element                   xpath=${LOGINBUTTON}
    wait until element is visible   xpath=${YOURDETAILS}