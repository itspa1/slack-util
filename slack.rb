require 'httparty'

token = #your key goes here
puts "Enter email"
email = gets.chomp
puts "enter the channel id's"
channels = gets.chomp
response = HTTParty.get("https://slack.com/api/users.admin.invite?token=" + token + "&email=" + email + "&channels=" + channels)
puts(response)