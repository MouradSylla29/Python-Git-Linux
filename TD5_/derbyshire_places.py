import requests

response = requests.get('https://opendomesday.org/api/1.0/country/')
data = response.json()
ids = [place['id'] for place in data['places']]
print(ids)
