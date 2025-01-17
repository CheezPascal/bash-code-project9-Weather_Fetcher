# bash-cpde-project9-Weather_Fetcher
-----------------------------------------
Made a simple weather fetcher app in Bash
-----------------------------------------


- Weather app uses curl to fetch weather data from the OpenWeatherMap API and jq to parse the JSON response.   

- Here's a breakdown of the code

Code Breakdown:

read -p "Enter city name: " city: This line prompts the user to enter a city name and stores it in the variable city.

curl -s "http://api.openweathermap.org/data/2.5/weather?q=$city&appid=YOUR_API_KEY&units=metric" | jq '.': This line uses curl to fetch weather data from the OpenWeatherMap API. Let's break down the URL:

http://api.openweathermap.org/data/2.5/weather: This is the base URL for the OpenWeatherMap weather data endpoint.
?q=$city: This specifies the city name to be queried. The $city variable is used to insert the user-entered city name.

&appid=YOUR_API_KEY: This specifies the API key parameter. You need to replace YOUR_API_KEY with your actual OpenWeatherMap API key.

&units=metric: This parameter requests the temperature in Celsius.

| jq '.': This pipes the output of curl (the JSON response) to the jq command, which is used to parse the JSON data. The . dot operator in jq simply prints the entire JSON object.

- Installation: 
1. Download the code using git clone https://github.com/CheezPascal/bash-cpde-project9-Weather_Fetcher.git 
2. Then change the permissions with chmod +x weatherFetcher.sh
3. Launch the app with ./weatherFetcher.sh
