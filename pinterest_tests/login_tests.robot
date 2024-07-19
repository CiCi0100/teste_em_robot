*** Settings ***
Library    SeleniumLibrary
Library    Process
Suite Setup    Open Browser    ${BASE_URL}    ${BROWSER}
Suite Teardown    Close Browser 

*** Variables ***
${BASE_URL}    https://br.pinterest.com/
${BROWSER}     Chrome
${USERNAME}    cihespanhol@gmail.com
${PASSWORD}    toomanynights
*** Test Cases ***
Login with Valid Credentials
    [Documentation]    Testa o login com credenciais válidas
    Open Login Page
    Input Login Credentials
    Submit Login Form

*** Keywords ***
Open Login Page
    Maximize Browser Window
    Wait Until Element Is Visible    //div[@class='RCK Hsu USg adn NTm KhY iyn S9z Vxj aZc Zr3 hA- Il7 hNT BG7 hDj _O1 KS5 mQ8 Tbt L4E'][contains(.,'Entrar')]
    Click Element    //div[@class='RCK Hsu USg adn NTm KhY iyn S9z Vxj aZc Zr3 hA- Il7 hNT BG7 hDj _O1 KS5 mQ8 Tbt L4E'][contains(.,'Entrar')]

Input Login Credentials
    Wait Until Element Is Visible    //input[contains(@autocomplete,'email')]
    Input Text    //input[contains(@autocomplete,'email')]   ${USERNAME}
    Wait Until Element Is Visible    //input[contains(@autocomplete,'new-password')] 
    Input Text    //input[contains(@autocomplete,'new-password')]    ${PASSWORD}

Submit Login Form
    Wait Until Element Is Visible    //div[@class='KS5 hs0 mQ8 un8 tkf TB_'][contains(.,'Entrar')]
    Click Element    //div[@class='KS5 hs0 mQ8 un8 tkf TB_'][contains(.,'Entrar')]

    