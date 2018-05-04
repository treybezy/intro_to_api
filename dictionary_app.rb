require "unirest"

system 'clear'

puts "Enter a word"

word = gets.chomp


response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")



dict = response.body
dictionary = dict[0]["text"]

p dictionary


response2 = Unirest.get("http://api.wordnik.com:80/v4/word.json/word/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

dicto = response2.body
word_example = dicto[0]["text"]

p word_example


response3 = Unirest.get("http://api.wordnik.com:80/v4/word.json/word/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

dictio = responde3.body
pro = dictio[0]["raw"]

p pro