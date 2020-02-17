#!env python3

import requests
import json

r = requests.get("https://webview.nextbike.net/getAPIKey.json")
j = json.loads(r.content)
apiKey = j['apiKey']
# station = 6935  # Radziszewskiego

def get_station(station):
    r = requests.get("https://api.nextbike.net/api/getBikeList.json?apikey={}&station={}".format(apiKey, station))
    return json.loads(r.content)

stations = [
    (6935, ''),   # UMCS
    (6948, 'K'),  # KUL
    (6962, 'S'),  # Staszic
]

for station, symbol in stations:
    j = get_station(station);
    if 'items' in j:
        if symbol:
            print(symbol, end=' ')
        print(len(j['items']))
        exit(0)
print("0")
