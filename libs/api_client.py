from robot.api.deco import keyword
import requests
import json
from pathlib import Path

@keyword('Create Document Api')
def create_document(repository, env, document_data, headers, file_path):
    url = f"{env}/api/{repository}/documents"
    data = {'metadata': json.dumps(document_data)}
    file_full_path = Path(file_path)
    if not file_full_path.is_absolute():
        file_full_path = Path(__file__).parent.parent / file_path
    files = {'files': (file_full_path.name, open(file_full_path, 'rb'), 'application/octet-stream')}
    response = requests.post(url, data=data, files=files, headers=headers)
    response.raise_for_status()
    return response.json()

@keyword('Get Document Api')
def get_document(repository, env, unique_id, headers):
    url = f"{env}/api/{repository}/documents/document"
    params = {'uniqueId': unique_id}
    response = requests.get(url, params=params, headers=headers)
    response.raise_for_status()
    return response.json()
