*** Settings ***
Resource                 ../pageObjects/homePageObject/homePage.robot
Resource                 ../pageObjects/loginPageObject/loginPage.robot
Resource                 ../pageObjects/bookPageObject/bookPage.robot
Resource                 ../pageObjects/pricePageObject/pricePage.robot
Test Setup               Run Keywords    
...                      Open Flight Application
...                      AND    Login With Valid credentials
Test Teardown            Close Application

*** Variables ***
${VALID_EMAIL}           support@ngendigital.com
${VALID_PASSWORD}        abc123
${SCREENSHOT_DIR}        ./screenshot

*** Test Cases ***
User Should be Able to Booking Flight
    # Step 1: Verify User is Logged In
    Verify User Is Logged In
    # Step 2: Click Book Button on Home Page
    Click Book Button on Home Page
    # Step 3: Verify Book Page is Appears
    Verify Book Page is Appears
    # Step 4: Click One Way on Book Page
    Click One Way on Book Page
    # Step 5: Click Button Flight to Choose Type of Service
    Click Flight Button to Choose Type of Service
    # Step 6: Click Checkbox Day on Book Page
    Click Checkbox Day on Book Page
    # Step 7: Click Book Button on Book Page
    Click Book Button on Book Page
    # Step 8: Verify Price Page is Appears
    Verify Price Page is Appears
    # Step 8: Click Price on Price Page
    Click Price on Price Page
    # Step 9: Click Confirm Button on Price Page
    Click Confirm Button on Price Page
    # Step 10: Verify Booking is Success
    Verify Booking is Success