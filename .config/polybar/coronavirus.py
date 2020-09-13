#!/bin/python
import requests
import json

url="https://corona-stats.online/Poland?format=json&source=2"
try:
    r = requests.get(url)
except Exception:
    print("Failed to fetch")
    exit(1)

if r.status_code != 200:
    print("Failed to fetch")
    exit(1)

data = json.loads(r.content)['data'][0]
today_change = data['todayCases'] - data['todayRecovered'] - data['todayDeaths']
arrow_down = '▼'
arrow_up = '▲'

arrow = arrow_up if today_change > 0 else arrow_down
today_change = abs(today_change)

if today_change != 0:
    change = ' ' + arrow + " " + str(today_change)
else:
    change = ''

print("☣️", str(data['active']) + change)
