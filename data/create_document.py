repository = "demo-repo"
env = "http://restapi.dms2-dev.r53.rbaws.cz:8088/rb-nkl/v1"

headers = {
    "X-Api-Name": "test-service",
    "X-Request-Id": "SYS001234567890123456789",
    "X-Correlation-Id": "11111111-1111-1111-1111-111111111111",
    "X-Request-App": "APP",
    "X-User-Id": "test-user",
    "X-User-Roles": "admin",
    "X-User-Type": "INT"
}

document_data = {
    "businessId": "B123",
    "documentType": "ID_CARD",
    "dataEntries": [{"name": "page1", "filename": "create_document_testFile.pdf"}]
}

file_path = "data/documents/create_document_testFile.pdf"