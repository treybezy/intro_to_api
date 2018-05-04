require 'unirest'

system 'clear'




puts "We will be entering the subreddit"
reddits = gets.chomp


response = Unirest.get("https://www.reddit.com/r/programming.json")


red = response.body
redd = red["data"]
reddi = redd["children"][1]
redditt = reddi["data"]["subreddit"]

p redditt

