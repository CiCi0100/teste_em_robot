*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot

*** Test Cases ***
Scenario: Login com credenciais válidas
    Given i'm on the Pinterest login page
    When i enter my email "${VALID_EMAIL}"
    And i enter my password "${VALID_PASSWORD}"
    And i click the login button
    Then i should see the Pinterest home page
    And i must be logged in as "${VALID_EMAIL}"

