require_relative './config/environment'

puts "Welcome to Traveler's Insight!!!"
puts "What is your name?"

user_name = gets.chomp

new_user = User.new(user_name)

new_game = Cli.new(new_user)

new_game.start