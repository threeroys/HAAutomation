*** Settings ***
Documentation    Verify updating your account details is saved and retrieved after logging out and back in using the My Account link.
Resource    ../../uiResources/accountLoginPage.robot
Resource    ../../uiResources/accountDetailsPage.robot
Variables   ../../uiResources/variables.py

*** Test Cases ***
Update Account Information
    Open Browser to Login Page and Login    ${USERNAME}     ${PASSWORD}
    Open Account Details
    Update User Address and Save            ${NEWADDRESS}
    Logout
    Login                                   ${USERNAME}     ${PASSWORD}
    Open Account Details
    Verify User Address                     ${NEWADDRESS}

    [Teardown]  Close Browser