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

unique_id = "e58ed763-928c-4155-bee9-fdbaaadc15f3"

def get_repository():
    return repository

def get_headers():
    return headers

def get_unique_id():
    return unique_id

def get_env():
    return env