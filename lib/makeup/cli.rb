require 'pry'

class CLI

    def start
        puts "\n"
        puts "~ Welcome to the Make-Up Foundation Finder! ~"
        puts "\n"
        API.fetch_foundation
        self.menu
    end

    def menu
        puts "Would you like to view the list of foundations? (type yes or no)"
        puts "\n"
        
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "Perfect!"
            puts "Choose which foundation you'd like more information on!"
            puts "\n"
            display_foundation
            ask_user_for_foundation_type
            sleep(1)
            menu
        elsif user_input == 'no' || user_input == "n"
            puts "\n"
            puts "Sorry, we couldn't accommadate you!"
            sleep(2)
            puts "\n"
            puts "Thank you for visiting!"
            puts "\n"
        end

    end

    def ask_user_for_foundation_type
        index = gets.strip.to_i - 1
        max_limit = Foundation.all.length - 1
        until index.between?(0,max_limit)
            puts "Sorry that is an invalid choice"
            index = gets.strip.to_i - 1
        end
        display_foundation_details(Foundation.all[index])
    end

    def display_foundation_details(foundation)
        sleep(1)
        puts "\n"
        puts foundation.name
        puts "\nBrand:" + foundation.brand
        puts "\nDescription:" + foundation.description 
        puts "\n"
    end

    def display_foundation 
        Foundation.all.each.with_index(1) do |foundation, index|
            puts "#{index}. #{foundation.name}"
        end
    end
end