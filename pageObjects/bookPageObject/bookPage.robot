*** Settings ***
Resource                        ../base/base.robot
Variables                       bookpage_locators.yaml

*** Keywords ***   
Verify Book Page is Appears 
    Wait Until Element Is Visible    ${oneway_type_bookpage}
    Wait Until Element Is Visible    ${roundtrip_type_bookpage}
    Wait Until Element Is Visible    ${destination_city_bookpage}
    Wait Until Element Is Visible    ${class_bookpage}
    Wait Until Element Is Visible    ${start_date_bookpage}
    Wait Until Element Is Visible    ${end_date_bookpage}
    Wait Until Element Is Visible    ${flight_type_bookpage}
    Wait Until Element Is Visible    ${flight_hotel_type_bookpage}
    Wait Until Element Is Visible    ${checkbox_day_bookpage}
    Wait Until Element Is Visible    ${book_button_bookpage}

Click One Way on Book Page
    Wait Until Element Is Visible    ${oneway_type_bookpage} 
    Click Element                    ${oneway_type_bookpage}

Click Flight Button to Choose Type of Service
    Wait Until Element Is Visible    ${flight_type_bookpage}
    Click Element                    ${flight_type_bookpage}

Click Checkbox Day on Book Page
    Wait Until Element Is Visible    ${checkbox_day_bookpage}
    Click Element                    ${checkbox_day_bookpage}

Click Book Button on Book Page
    Wait Until Element Is Visible    ${book_button_bookpage}
    Click Element                    ${book_button_bookpage}