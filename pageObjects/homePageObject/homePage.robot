*** Settings ***
Resource            ../base/base.robot
Variables           homepage_locator.yaml

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${logo_homePage}

Click Sign In Button on Home Page
    Wait Until Element Is Visible        ${signIn_button_homepage}
    Click Element                        ${signIn_button_homepage}

Verify User Is Logged In
...    Wait Until Element Is Visible    ${userName_text_homepage}

Click Book Button on Home Page
    Wait Until Element Is Visible    ${book_button_homepage}
    Click Element                    ${book_button_homepage}

Click Search Button on Home Page
    Wait Until Element Is Visible    ${search_button_homepage}
    Click Element                    ${search_button_homepage}