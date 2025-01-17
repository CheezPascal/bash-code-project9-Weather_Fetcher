#!/bin/bash

# Weather Fetcher
read -p "Enter city name: " city

curl -s "http://api.openweathermap.org/data/2.5/weather?q=$city&appid=YOUR_API_KEY&units=metric" | jq '.'
(Replace YOUR_API_KEY with your OpenWeatherMap API key.)
