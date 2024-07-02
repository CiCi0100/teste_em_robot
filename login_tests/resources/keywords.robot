*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}        https://www.pinterest.com/login/
${BROWSER}          Chrome
${VALID_EMAIL}      email@gmail.com
${VALID_PASSWORD}   senha_secreta

*** Keywords ***

Given i'm on the Pinterest login page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    css=button[type='submit']

When i enter my email "${VALID_EMAIL}"
    Input Text    id=email    ${VALID_EMAIL}

And i enter my password "${VALID_PASSWORD}"
    Input Text     id=password   ${VALID_PASSWORD}

And i click the login button
    Click Element   //button[contains(text(),"Iniciar sessão")]
    

Then i should see the Pinterest home page
     Page Should Contain Element    css=div[data-test-id="homefeed"]

And i must be logged in as "${VALID_EMAIL}"
    Element Text Should Be    css=div[data-test-id="header-profile"]   ${VALID_EMAIL}
