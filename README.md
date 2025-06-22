# Robot Framework API Test Project

This project contains Robot Framework tests for API endpoints described in the provided analysis files. It uses Python and the `requests` library for HTTP requests, with all API logic implemented in Python keywords (not using RequestsLibrary).

## Structure
- `tests/` — Robot Framework test cases
- `libs/` — Python library with API keywords
- `data/` — Test data in JSON format

## How to run tests
1. Install dependencies:
   ```sh
   pip install -r requirements.txt
   ```
2. Run tests:
   ```sh
   robot tests/
   ```

## Scenarios
- Create a new document (POST /api/{repositoryName}/documents)
- Get a document by uniqueId (GET /api/{repositoryName}/documents/document)

All test data and configuration are in `data/testdata.json`. Update variables and authentication as needed for your environment.
# rb
