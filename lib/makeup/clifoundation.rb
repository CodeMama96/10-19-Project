require 'pry'

class CliFoundation

    def welcome
        puts "Welcome to Foundation Finder!"
        API.fetch_makeup
        self.menu
    end

    def menu
        puts "Would you like to view the list of foundations?"
        puts "Type 'yes' to continue or any other key to exit."
        user_input = gets.strip.downcase

    end