# RB DMS API DEMO

This project contains Robot Framework tests for DMS2 API endpoints.

## Project Structure
- `tests/` — Robot Framework test cases (one test per file, e.g. create/get document)
- `resource/` — Resource files with reusable Robot Framework keywords
- `libs/` — Python library with API keywords (HTTP logic)
- `data/` — Test data as Python files (imported as modules)

## How to Run Tests
1. Install dependencies:
   ```sh
   pip install -r requirements.txt
   ```
2. Run tests from the project root:
   ```sh
   robot tests/
   ```

## Scenarios Covered
- Create a new document (POST /api/{repositoryName}/documents)
- Get a document by uniqueId (GET /api/{repositoryName}/documents/document)

## Notes
- Test data is defined in `data/create_document.py` and `data/get_document.py` as Python variables.
- Resource files in `resource/` provide reusable keywords for test setup and API calls.
- All API calls are made via Python keywords in `libs/api_client.py`.
- Update variables and authentication in the data files as needed for your environment.

## DMS2 Service Access Requirements
To run these tests successfully, you must have valid network access and sufficient rights to reach the DMS2 API endpoints. If you do not have the required permissions or cannot connect to the endpoints, the tests will fail. Please ensure your user/service account is authorized for the tested DMS2 operations.