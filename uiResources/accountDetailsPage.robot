*** Settings ***
Documentation    Resources and High Level Keywork functions to interact with the Account Details Page

Library     Selenium2Library
Resource    accountLoginPage.robot
Variables   variables.py
Variables   pathLibrary.py

*** Keywords ***
Update User Address and Save
    [Arguments]     ${NEWADDRESS}
    Input Text      xpath=${ADDRESSFIELD}   ${NEWADDRESS}
    Click Element   xpath=${SAVEPROFILEBUTTON}

Verify User Address
    [Arguments]    ${ADDRESS}
    Element Text Should Be      xpath=${ADDRESSFIELD}     ${ADDRESS}