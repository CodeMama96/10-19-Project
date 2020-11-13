require 'pry'

class CLI
    @@arr = []
    def start
        puts "\n"
        puts "~ Welcome to the Make-Up Foundation Finder! ~"
        puts "\n"
        API.fetch_foundation
        self.menu
    end

    def menu
        puts "Would you like to view the list of foundations? (type Yes or No)"
        puts "\n"
        input 
    end

    def recursion
        puts "Would you like to view the list again? (Choose Yes or No)"
        input
    end

    def input 
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y" || user_input == "Yes"
            puts "\n"
            puts "Perfect!"
            puts "\n"
            puts "Choose which foundation you'd like more information on!"
            puts "\n"
            display_foundation
            ask_user_for_foundation_type
            sleep(1)
            recursion 
        elsif user_input == 'no' || user_input == "n" || user_input == "No"
            puts "\n"
            puts "Here are the foundations you chose!"
            puts "\n"
            puts @@arr
            sleep(2)
            puts "\n"
            puts "Thank you for visiting!"
            puts "\n"
        else 
            puts "Try Again!"
            menu
        end
        
    end

    def ask_user_for_foundation_type
        i = gets.strip.to_i - 1
        max_limit = Foundation.all.length - 1
        until i.between?(0,max_limit)
            puts "Sorry, choose another!"
            i = gets.strip.to_i - 1
        end

        foundation_instance = Foundation.all[i]
        display_foundation_details(foundation_instance)
    end

    def display_foundation_details(foundation)
        sleep(1)
        puts "\n"
        puts foundation.name
        puts "\nBrand:" + foundation.brand
        puts "\nDescription:" + foundation.description 
        puts "\n"
        save_to_array(foundation)
    end

    def display_foundation 
        Foundation.all.each.with_index(1) do |foundation, i|
            puts "#{i}. #{foundation.name}"
        end
    end


    def save_to_array(foundation)
        @@arr << foundation.name.to_s
    end


end