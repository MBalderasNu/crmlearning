*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${HOME_HEADER_LABEL} =  Customers Are Priority One


*** Keywords ***
Navigate To
    go to                          ${TEST_URL}

Verify Page Loaded

    wait until page contains    ${HOME_HEADER_LABEL}

