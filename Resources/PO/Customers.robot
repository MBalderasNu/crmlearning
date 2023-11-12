*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CUSTOMERS_HEADER_LABEL} =     Our Happy Customers
${ADD_CUSTOMER_LINK} =  id=new-customer
${ADD_CUSTOMER_SUCCESS_MESSAGE} =  Success! New customer added.

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${CUSTOMERS_HEADER_LABEL}


Click Add Customer Link
    click link     ${ADD_CUSTOMER_LINK}

Verify Customer Added Successfully
    wait until page contains    ${ADD_CUSTOMER_SUCCESS_MESSAGE}
