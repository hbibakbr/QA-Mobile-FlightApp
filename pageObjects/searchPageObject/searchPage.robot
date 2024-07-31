*** Settings ***
Resource                  ../base/base.robot
Variables                 searchpage_locators.yaml

*** Variables ***
${VALID_BOOKING_ID}       DA935

*** Keywords ***
Verify Search Page is Appears
    Wait Until Element Is Visible    ${title_searchpage}
    Wait Until Element Is Visible    ${input_field_searchpage}
    Wait Until Element Is Visible    ${search_button_searchpage}

Input Booking ID
    [Arguments]                      ${booking_ID}=${VALID_BOOKING_ID}
    Input Text                       ${input_field_searchpage}    ${booking_ID}

Click Search Button on Search Page
    Wait Until Element Is Visible    ${search_button_searchpage}
    Click Element                    ${search_button_searchpage}

Verify Searching Booking ID is Appears
    Wait Until Element Is Visible    ${bookingID_searchpage}