import json
import requests

r = requests.get('http://localhost:3000')

data = r.json()

print(data)
print(data[0]['name'] + " is...")
print(data[0]['color'] + "!")
print(data[1]['name'] + " is...")
print(data[1]['color'] + "!")
print(data[2]['name'] + " is...")
print(data[2]['color'] + "!")
print(data[3]['name'] + " is...")
print(data[3]['color'] + "!")