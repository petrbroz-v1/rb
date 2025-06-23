*** Settings ***
Library    ../libs/api_client.py
Variables  ../data/create_document.py

*** Keywords ***
Call Create Document Api
    [Documentation]    Creates a new document using the API
    ${result}=    Create Document Api    ${REPOSITORY}    ${ENV}    ${DOCUMENT_DATA}    ${HEADERS}    ${FILE_PATH}
    Set Suite Variable    ${result}

Verify Document Creation
    [Documentation]    Creates a new document using the API
    Should Contain    ${result}    uniqueId
    Should Contain    ${result}    dataEntries