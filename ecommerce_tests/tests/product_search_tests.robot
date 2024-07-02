*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown     Close Browser

*** Variables ***
${BASE_URL}    <http://example.com>
${BROWSER}     Chrome

*** Test Cases ***
Search for a Product
    [Documentation]    Testa a busca de produtos pelo nome
    Open Home Page
    Search for Product
    Verify Search Results

*** Keywords ***
Open Home Page
    Go To    url

Search for Product
    Input Text    locator    text
    Click Button    locator

Verify Search Results
    Page Should Contain    Results for "Laptop"