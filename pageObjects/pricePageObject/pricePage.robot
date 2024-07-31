*** Settings ***
Resource    ../base/base.robot
Variables    pricepage_locators.yaml

*** Keywords ***
Verify Price Page is Appears
    Wait Until Element Is Visible    ${title_pricepage}
    Wait Until Element Is Visible    ${price_example_pricepage}
    Wait Until Element Is Visible    ${confirm_button_pricepage}

Click Price on Price Page
    Wait Until Element Is Visible    ${price_example_pricepage}
    Click Element                    ${price_example_pricepage}

Click Confirm Button on Price Page
    Wait Until Element Is Visible    ${confirm_button_pricepage}
    Click Element                    ${confirm_button_pricepage}

Verify Booking is Success
    Wait Until Element Is Visible    ${success_booking_pricepage}
    Capture Page Screenshot          booking_success.png