*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =   Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =  Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =  id=EmailAddress
${ADDCUSTOMER_FIRSTNAME_TEXTBOX} =  id=FirstName
${ADDCUSTOMER_LASTNAME_TEXTBOX} =   id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =       id=City
${ADDCUSTOMER_STATE_LIST} =       id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIOBTN} =       gender
${ADDCUSTOMER_PROMO_CHECKBOX} =       name=promos-name

*** Keywords ***
Verify Page Loaded
    wait until page contains  ${ADDCUSTOMER_HEADER_LABEL}


Add New Customer
   Fill in Customer Info
   Click Submit Button


Fill in Customer Info
    input text              ${ADDCUSTOMER_EMAIL_TEXTBOX}  testuser55@gmail.com
    input text              ${ADDCUSTOMER_FIRSTNAME_TEXTBOX}    Mike
    input text              ${ADDCUSTOMER_LASTNAME_TEXTBOX}     John
    input text              ${ADDCUSTOMER_CITY_TEXTBOX}        Meridian
    select from list by value    ${ADDCUSTOMER_STATE_LIST}   MS
    select radio button     ${ADDCUSTOMER_GENDER_RADIOBTN}     male
    select checkbox         ${ADDCUSTOMER_PROMO_CHECKBOX}


Click Submit Button
    click button    ${ADDCUSTOMER_SUBMIT_BUTTON}

