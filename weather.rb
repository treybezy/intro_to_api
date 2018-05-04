require 'unirest'


system 'clear'u

puts "Welcome to the Weather App"

print "Enter a City: "
city = gets.chomp



print "Enter a State (two letter code): "
state = gets.chomp

response = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{city}%2C%20#{state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")

weather_data = response.body
channel = weather_data["query"]["results"]["channel"]


city_data = channel["location"]["city"]
state_data = channel["location"]["region"]

temp = channel["item"]["condition"]["temp"]
condition = channel["item"]["condition"]["text"]


puts "Today in #{city_data}, #{state_data} it is #{temp}° F and #{condition} outside"