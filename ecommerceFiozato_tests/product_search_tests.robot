*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown     Close Browser

*** Variables ***
${BASE_URL}    https://fiozato.com/
${BROWSER}     Chrome

*** Test Cases ***
Search for a Product
    [Documentation]    Testa a busca de produtos pelo nome
    Open Home Page
    Search for Product
    Verify Search Results

*** Keywords ***
Open Home Page  
  Maximize Browser Window  

Search for Product
    Click Element    locator=//a[contains(@class,'header__icon-wrapper tap-area hidden-pocket hidden-lap ')] 
    Input Text    locator=//input[contains(@class,'predictive-search__input')]   text=vestido pérola
    Wait Until Element Is Visible    locator=//span[@class='product-item-meta__title text--small'][contains(.,'Vestido Pérola')]
    Click Element   locator=//span[@class='product-item-meta__title text--small'][contains(.,'Vestido Pérola')]

Verify Search Results
    Page Should Contain Image   locator=//img[@src='//fiozato.com/cdn/shop/files/VestidoPerolaFiozato01_1500x.png?v=1700717521']