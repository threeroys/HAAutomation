*** Settings ***
Documentation
Library     HttpLibrary.HTTP
Library     Collections
Library     ApiLibrary.py
Variables   variables.py



*** Test Cases ***
Alternate Fuel Station Locations
    Create HTTP Context     developer.nrel.gov    https
    HttpLibrary.Http.Get    /api/alt-fuel-stations/v1/nearest.json?api_key=${APIKEY}&location=AUSTIN+TX&ev_network=ChargePoint+Network
    ${RESPONSESTATUS}=      Get Response Status
    Should Start With       ${RESPONSESTATUS}   200
    Response Body Should Contain    HYATT AUSTIN
    ${RESPONSEBODY}=        Get Response Body
    Should Be Valid Json    ${RESPONSEBODY}
    Log JSON                ${RESPONSEBODY}
    ${STATIONID}=           ApiLibrary.Get ID For Station      ${RESPONSEBODY}     ${STATION}
    ${ADDRESS}=             ApiLibrary.Get Station Address     ${RESPONSEBODY}     ${STATIONID}
    Should be Equal         ${ADDRESS}  ${EXPECTEDADDRESS}