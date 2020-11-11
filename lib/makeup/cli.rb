
class CLI
    @@product = ["blush", "bronzer", "eyebrow", "eyeliner", "eyeshadow", "foundation", "lip liner", "lip stick", "mascara", "nail polish"]
    def start
        puts "Welcome"
        API.fetch_makeup
        self.menu
    end

    def menu
        puts "Please choose the following product that you're interested in."
        user_input = gets.strip.downcase
        display_makeup
        puts "Would you like more information?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "I like your style!"
            display_makeup
            ask_user_for_makeup_choice
            sleep(1)
            menu
        elsif user_input == 'search'
            menu
        else
            puts "Come again!"
        end

    end

    def ask_user_for_makeup_choice
        index = gets.strip.to_i - 1
        max_limit = MakeUp.all.length - 1
        until index.between?(0,max_limit)
            puts "That doesn't work!"
            index = gets.strip.to_i -1
        end
        makeup_instance = MakeUp.all[index]
        display_makeup_description(makeup_instance)

    end

    def display_makeup_description(makeup)
        sleep(1)
        puts "\n"
        puts makeup.name
        puts "\nProduct" + makeup.product
        puts "\nBrand" + makeup.brand
        puts "\nCategory" + makeup.category
        puts "\nDescription" + makeup.description
    end

    def display_makeup
      MakeUp.all.each.with_index(1) do |product, index|
        puts "#{index}. #{makeup.product}"
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
        end
    end


    def more?
    
    end

    def list_cart
        # array.save
        # display.array
        # list chosen items
    end

end

puts "CLI"