#!/bin/bash

echo "Running DigiWaxx fetch..."

API_URL="https://www.digiwaxx.com/api/v1/tracks?page=1"

curl -s "$API_URL" | jq '.data[] | {id, title, artist, bpm, key}'
