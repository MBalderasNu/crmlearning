*** Settings ***

Documentation    This is some basic info in general.
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/CrmApp.robot
Test Setup      Begin Web Test
Test Teardown   End Web Test
#Run the script:
# robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =    google chrome
${TEST_URL} =   https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =  balderas.matthew1@gmail.com
${VALID_LOGIN_PASSWORD} =   test123




*** Test Cases ***
Should be able to add new customer
    [Documentation]         test adding a new customer
    [Tags]  Customer
    CrmApp.Go to "Home" Page

    CrmApp.Login with Valid Credentials    ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}

    CrmApp.Add New Customer

    CrmApp.Sign Out

