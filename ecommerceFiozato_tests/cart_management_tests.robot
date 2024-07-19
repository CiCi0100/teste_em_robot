*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown     Close Browser
# Resource           product_search_tests.robot

*** Variables ***
${BASE_URL}    https://fiozato.com/
${BROWSER}     Chrome

*** Test Cases ***
Add Item to Cart
    [Documentation]    Testa a adição de um item ao carrinho de compras
    Open Product Page
    Add Product to Cart

Remove Item from Cart
    [Documentation]    Testa a remoção de um item do carrinho de compras
    Remove Product from Cart

*** Keywords ***
Open Product Page
    Maximize Browser Window
    Go To    https://fiozato.com/products/vestido-perola?_pos=1&_psq=vestido+pe&_ss=e&_v=1.0

Add Product to Cart
    Wait Until Element Is Visible    //button[contains(@class,'product-form__add-button button button--secondary button--full')]
    Click Button    //button[contains(@class,'product-form__add-button button button--secondary button--full')]

Remove Product from Cart
    Wait Until Element Is Visible    //a[contains(@class,'line-item__remove-button link text--subdued text--xxsmall')]
    Click Element    //a[contains(@class,'line-item__remove-button link text--subdued text--xxsmall')]
