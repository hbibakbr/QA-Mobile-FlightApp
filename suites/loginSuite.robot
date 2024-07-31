*** Settings ***
Resource                 ../pageObjects/base/base.robot
Resource                 ../pageObjects/homePageObject/homePage.robot
Resource                 ../pageObjects/loginPageObject/loginPage.robot
Library                  AppiumLibrary
Test Setup               Run Keywords
...                      Open Flight Application 
Test Teardown    
...                      Close Flight Application

*** Variables ***
${VALID_EMAIL}           support@ngendigital.com
${VALID_PASSWORD}        abc123

*** Test Cases ***
User should be able to login with valid credentials
    # Step 1: Verify home page appears
    Verify Home Page Appears
    # Step 2: Click sign in button on home page
    Click Sign In Button on Home Page
    # Step 3: Verify login page appears
    Verify Login Appears
    # Step 4: Input username
    Input User Email On Login Page    ${VALID_EMAIL}
    # Step 5: Input password
    Input User Password On Login Page    ${VALID_PASSWORD}
    # Step 6: Click sign in button on login page
    Click Sign In Button on Login Page
    # Step 7: Verify user is logged
    Verify User Is Logged In


#User should not be able to login with invalid credentials