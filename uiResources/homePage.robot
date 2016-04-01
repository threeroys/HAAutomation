*** Settings ***
Documentation    Resources and High Level Keywork functions to interact with the Home Page and Navigation Bar

Library     Selenium2Library
Variables   variables.py
Variables   pathLibrary.py

*** Keywords ***
Open Browser to Home Page
    Open Browser                    http://store.demoqa.com/    chrome
    Maximize Browser Window
    wait until element is visible   xpath=${HOMEMENU}
    Title Should be                 ONLINE STORE | Toolsqa Dummy Test site


Search Products
    [Arguments]     ${PRODUCTSEARCH}
    Input Text  xpath=${HOMESEARCHBOX}    ${PRODUCTSEARCH}
    Press Key   xpath=${HOMESEARCHBOX}    \\13