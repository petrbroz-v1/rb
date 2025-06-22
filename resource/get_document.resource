*** Settings ***
Library    ../libs/api_client.py
Library    ../data/get_document.py

*** Keywords ***
Get Data For Get Document Test
    [Documentation]    Loads the test data for the get document test case
    ${repository}=    Get Repository
    ${headers}=       Get Headers
    ${unique_id}=       Get Unique Id
    Set Suite Variable    ${REPOSITORY}    ${repository}
    Set Suite Variable    ${HEADERS}       ${headers}
    ${UNIQUE_ID}=    Set Variable If    '${UNIQUE_ID}' != ''    ${UNIQUE_ID}    ${unique_id}
    Set Suite Variable    ${UNIQUE_ID}    ${UNIQUE_ID}
    ${env}=      Get Env
    Set Suite Variable    ${ENV}      ${env}

Get Document
    [Documentation]    Retrieves a document by its unique ID using the API
    [Arguments]    ${repository}    ${env}    ${unique_id}    ${headers}
    ${result}=    Get Document Api    ${repository}    ${env}    ${unique_id}    ${headers}
    RETURN    ${result}
