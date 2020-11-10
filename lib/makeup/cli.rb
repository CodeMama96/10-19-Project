require 'pry'
require 'net/http'
require 'json'
require_relative './makeup.rb'

class CLI
    makeup = ["blush", "bronzer", "eyebrow", "eyeliner", "eyeshadow", "foundation", "lip liner", "lip stick", "mascara", "nail polish"]
    def start
        puts "Welcome"
        puts "Please choose the following product that you're interested in."
        self.display_makeup
        # index = self.initial_input
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

    def display_makeup
        puts "Choose a product"
        # makeup.sort
        MakeUp.all.select do |makeup|
            puts "I'd love to check out more, #{makeup}!"
        end 
        gets.strip
        # puts "Choose a product"
        # 1. "blush"
        # 2. "bronzer"
        # 3. "eyebrow"
        # 4. "eyeliner"
        # 5. "eyeshadow"
        # 6. "foundation"
        # 7. "lip liner"
        # 8. "lip stick"
        # 9. "mascara"
        # 10. "nail polish"

        def list_brand
            "Here's are the brands!" 
            "You choose this #{brand}!"
            # option to look at description and price of each brand item
            "Would you like to add it to your cart?"
            if yes 
                #add to cart
            elsif no
                #go back to brand
            else
                "That's not a valid answer."
            end
        end
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
        def list_cart
            # list chosen items and total?
        end


    end


end

puts "CLI"