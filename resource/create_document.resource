*** Settings ***
Library    ../libs/api_client.py
Library    ../data/create_document.py

*** Keywords ***
Get Data For Create Document Test
    [Documentation]    Loads the test data for the create document test case
    ${repository}=    Get Repository
    ${headers}=       Get Headers
    ${document_data}=      Get Document Data
    Set Suite Variable    ${REPOSITORY}    ${repository}
    Set Suite Variable    ${HEADERS}       ${headers}
    Set Suite Variable    ${DOCUMENT_DATA}      ${document_data}

Create Document
    [Documentation]    Creates a new document using the API
    [Arguments]    ${repository}    ${document_data}    ${headers}
    ${result}=    Create Document Api    ${repository}    ${document_data}    ${headers}
    Set Suite Variable    ${UNIQUE_ID}    ${result['uniqueId']}
    RETURN    ${result}
