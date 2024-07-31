*** Settings ***
Resource                  ../base/base.robot
Resource                  ../homePageObject/homePage.robot
Variables                 loginpage_locators.yaml


*** Variables ***
${VALID_EMAIL}            support@ngendigital.com
${VALID_PASSWORD}         abc123

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_Button_loginPage}

Input User Email On Login Page
    [Arguments]    ${email}
    Input Text     ${email_input_loginPage}    ${email}

Input User Password On Login Page
    [Arguments]    ${password}
    Input Text     ${password_input_loginPage}    ${password}

Click Sign In Button on Login Page
    Click Element    ${signIn_Button_loginPage}

Login With Valid credentials
    [Arguments]                           ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button on Home Page
    Verify Login Appears
    Input User Email On Login Page        ${email}
    Input User Password On Login Page     ${password}
    Click Sign In Button on Login Page