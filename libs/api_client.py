from robot.api.deco import keyword
import requests
import json
from pathlib import Path

def load_json(filename):
    path = Path(__file__).parent.parent / 'data' / filename
    with open(path, 'r', encoding='utf-8') as f:
        return json.load(f)

@keyword('Create Document Api')
def create_document(repository, env, document_data, headers):
    url = f"{env}/api/{repository}/documents"
    files = {}
    data = {'metadata': json.dumps(document_data)}
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
