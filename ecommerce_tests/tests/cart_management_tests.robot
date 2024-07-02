*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown     Close Browser

*** Variables ***
${BASE_URL}    <http://example.com>
${BROWSER}     Chrome

*** Test Cases ***
Add Item to Cart
    [Documentation]    Testa a adição de um item ao carrinho de compras
    Open Product Page
    Add Product to Cart
    Verify Item in Cart

Remove Item from Cart
    [Documentation]    Testa a remoção de um item do carrinho de compras
    Open Cart Page
    Remove Product from Cart
    Verify Item Removed from Cart

*** Keywords ***
Open Product Page
    Go To    url

Add Product to Cart
    Click Button    locator

Verify Item in Cart
    Go To    url
    Page Should Contain    text

Open Cart Page
    Go To    url

Remove Product from Cart
    Click Button    locator

Verify Item Removed from Cart
    Page Should Not Contain    text