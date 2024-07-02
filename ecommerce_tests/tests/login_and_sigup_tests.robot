*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown    Close Browser 

*** Variables ***
${BASE_URL}    <http://example.com>
${BROWSER}     Chrome
${USERNAME}    testuser
${PASSWORD}    testpass

*** Test Cases ***
Sign Up with Valid Details
    [Documentation]    Testa o cadastro de usuário com detalhes válidos
    Open Login Up Page
    Input Sign Up Details
    Submit Sign Up Form
    Verify Sign Up Sucess

Login with Valid Credentials
    [Documentation]    Testa o login com credenciais válidas
    Open Login Page
    Input Login Credentials
    Submit Login Form
    Verify Login Sucess

*** Keywords ***
Open Login Up Page
    Go to    ${BASE_URL}/signup

Input Sign Up Details
    Input Text    locator    ${USERNAME}
    Input Text    locator    ${PASSWORD}
    Input Text    locator    testuser@example.com

Submit Sign Up Form
    Click Button    locator

Verify Sign Up Sucess
    Page Should Contain    text

Open Login Page
    Go To    ${BASE_URL}/Login

Input Login Credentials
    Input Text    locator    ${USERNAME}
    Input Text    locator    ${PASSWORD}

Submit Login Form
    Click Button    locator

Verify Login Sucess
    Page Should Contain    Welcome, ${USERNAME}