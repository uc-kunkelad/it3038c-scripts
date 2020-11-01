import json
import requests

print('Please enter your zip code:')

zip = input()

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=%s,us&appid=229b8d00cbfd3d662679e10f79e083e9' % zip)

data = r.json()

print(data)

print(data['weather'][0]['description'])