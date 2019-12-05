require_relative './config/environment'

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

# ActiveRecord::Base.logger = old_logger

puts "Welcome to Traveler's Insight!!!"
puts "What is your name?"

traveler_name = gets.chomp

new_traveler = Traveler.new(traveler_name)

new_game = Cli.new(new_traveler)

new_game.start