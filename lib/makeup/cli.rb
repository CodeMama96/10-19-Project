require 'pry'

class CLI

    def welcome
        puts "Welcome to Foundation Finder!"
        API.fetch_foundation
        self.menu
    end

    def menu
        puts "Would you like to view the list of foundations?"
        puts "Type 'yes' to continue or any other key to exit."
        user_input = gets.strip.downcase

    end

    def ask_user_for_foundation_type
        index = gets.strip.to_i - 1
        max_limit = Foundation.all.length - 1
        until index.between?(0, max_limit)
            puts "Sorry that is an invalid choice"
            index = gets.strip.to_i - 1
        end
        hash =  Foundation.all(index)
        display_foundation_details(hash)
    end

    def display_foundation_details(foundation)
        sleep(1)
        puts "\n"
        puts foundation.name
        puts "\nBrand:" + foundation.brand
        puts "\nCategory:" + foundation.category
        puts "\nDescription:" + foundation.description 
    end

    def display_foundation 
        Foundation.all.each.with_index(1) do |foundation, index|
            puts "#{index}. #{foundation.name}"
        end
    end
end