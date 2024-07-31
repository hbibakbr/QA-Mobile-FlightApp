*** Settings ***
Resource                ../pageObjects/loginPageObject/loginPage.robot
Resource                ../pageObjects/homePageObject/homePage.robot
Resource                ../pageObjects/searchPageObject/searchPage.robot
Test Setup              Run Keywords    
...                     Open Flight Application
...                     AND    Login With Valid credentials
Test Teardown           Close Flight Application

*** Variables ***
${VALID_EMAIL}           support@ngendigital.com
${VALID_PASSWORD}        abc123
${VALID_BOOKING_ID}      DA935

*** Test Cases ***
User Should be Able to Searching by Booking ID
    # Step 1: Verify User is Logged in
    Verify User Is Logged In
    # Step 2: User Click Search Button on Home Page
    Click Search Button on Home Page
    # Step 3: Verify Search Page is Appears
    Verify Search Page is Appears
    # Step 4: User Input Booking ID
    Input Booking ID
    # Step 5: Click Search Button on Search Page
    Click Search Button on Search Page
    # Step 6: Verify Searching Booking ID is Appears
    Verify Searching Booking ID is Appears
