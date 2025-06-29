*** Settings ***
Resource          ../resources/get_document.resource
Library           OperatingSystem

*** Test Cases ***
Get Document
    [Documentation]    Verifies that a document can be retrieved by its unique ID
    [Tags]    smoke    REQ_05
    [Setup]    Get Data For Get Document Test
    ${result}=    Call Get Document Api    ${REPOSITORY}    ${ENV}    ${UNIQUE_ID}    ${HEADERS}
    Should Be Equal    ${result['uniqueId']}    ${UNIQUE_ID}
    Should Contain    ${result}    documentType
    Should Contain    ${result}    dataEntries