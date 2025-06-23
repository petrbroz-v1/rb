*** Settings ***
Resource          ../resources/create_document.resource
Library           OperatingSystem

*** Test Cases ***
Create Document
    [Documentation]    Verifies that a document can be created in the repository
    [Tags]    smoke    REQ_01
    Call Create Document Api
    Verify Document Creation