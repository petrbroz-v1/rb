*** Settings ***
Resource          ../resource/create_document.resource
Library           OperatingSystem

*** Test Cases ***
Create Document
    [Documentation]    Verifies that a document can be created in the repository
    [Tags]    smoke    REQ_01
    [Setup]    Get Data For Create Document Test
    ${result}=    Create Document Api    ${REPOSITORY}    ${ENV}    ${DOCUMENT_DATA}    ${HEADERS}
    Should Contain    ${result}    uniqueId
    Should Contain    ${result}    version