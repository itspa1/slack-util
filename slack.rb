require 'httparty'

token = "xoxp-73989670192-140762099108-225445449585-a6deddb745a3fb728ac0292979f3fe8e"
puts "Enter email"
email = gets.chomp
puts "enter the channel id's"
channels = gets.chomp
response = HTTParty.get("https://slack.com/api/users.admin.invite?token=" + token + "&email=" + email + "&channels=" + channels)
puts(response)