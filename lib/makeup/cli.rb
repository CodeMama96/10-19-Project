require 'pry'
require 'net/http'
require 'json'
require_relative './makeup.rb'

class CLI
    def start
        puts "Welcome"
        puts "Please choose the following product that you're interested in."
        self.display_makeup
        index = self.initial_input
        # query = CLI.topics[index]
        api = API.new(query)
        api.create_makeup
        MakeUp.display_makeup
        index = self.secondary_input

        MakeUp.display_makeup(index)
        self.more_makeup?
    end

    def input_to_index(input)
        input.to_i - 1
    end

    def more_makeup?
        puts "Would you like to try more makeup?"
        puts "1. Yes!"
        puts "2. No, maybe next time."
        input = gets.chomp
        index = input_to_index(input)

        if index == 0
            MakeUp.clear_all
            self.start
        end
    end


 # puts "Are you interested in other products?"
    # input = gets.strip.downcase
    # if input == "y"
    #   start
    # elsif input == "n"
    #   puts ""
    #   puts "Thank you for shopping with us! Have a great day!"q

    #   exit
    # else
    #   puts ""
    #   puts "I don't understand that answer."
    #   start
    # end

    def self.topics
        @@topics
    end

    def display_makeup
        Cli.topics.each_with_index{|brand, index| puts "#{index+1}. #{brand.capitalize}"}
    end

end

CLI.display_makeup