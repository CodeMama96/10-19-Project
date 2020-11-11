require 'pry'

class CLI
    #   @@products = ["blush", "bronzer", "eyebrow", "eyeliner", "eyeshadow", "foundation", "lip liner", "lip stick", "mascara", "nail polish"]
    def start
        puts "Welcome To The Make-Up Shop!"
        API.fetch_makeup
        self.menu
    end

    def menu
        puts "Please choose the following products that you're interested in."
        # puts @@products
        # user_input = gets.strip.downcase
        # reach into all the makeup objects and pick correct one
        # display_makeup(user_input)#(the one I just picked out from objects)
        # puts "Which brand do you like?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "I like your style!"
            display_list_of_foundations
            display_makeup(user_input)
            # sleep(1)
            menu
        elsif user_input == 'search'
            menu
        else
           
            puts "Come again!"
        end

    end

    def ask_user_for_brand_choice
        index = gets.strip.to_i - 1
        max_limit = MakeUp.all.length - 1
        until index.between?(0,max_limit)
            puts "This doesn't exist!"
            index = (gets.strip.to_i) -1 
        end
        makeup_instance = MakeUp.all[index]
        display_makeup_description(makeup_instance)

    end

    def display_makeup_description(makeup)
        sleep(1)
        puts "\n"
        puts makeup.foundation
        puts "\nProduct" + makeup.product
        puts "\nBrand" + makeup.brand
        puts "\nCategory" + makeup.category
        puts "\nDescription" + makeup.description
    end

    def display_makeup
        # makeup = API.new
        MakeUp.all.each.with_index(1) do |product, index|
        puts "#{index}. #{product.foundation}"
        end
    end

end

