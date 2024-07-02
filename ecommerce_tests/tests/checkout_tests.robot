*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown     Close Browser
Resource    cart_management_tests.robot
Resource    login_and_sigup_tests.robot

*** Variables ***
${BASE_URL}    <http://example.com>
${BROWSER}     Chrome
${USERNAME}    testuser
${PASSWORD}    testpass

*** Test Cases ***
Complete Purchase
    [Documentation]    Testa a finalização de uma compra
    Login
    Add Item to Cart
    Open Cart Page
    Proceed to Checkout
    Enter Shipping Details
    Confirm Purchase
    Verify Purchase Sucess

*** Keywords ***
Login
    Open Login Page
    Input Login Credentials
    Submit Login Form

Add Item to Cart
    Open Product Page
    Click Button    locator

Open Cart Page
    Go To    url

Proceed to Checkout
    Click Button    locator

Enter Shipping Details
    Input Text    locator    text
    Input Text    locator    text
    Input Text    locator    text

Confirm Purchase
    Click Button    locator

Verify Purchase Sucess
    Page Should Contain    text