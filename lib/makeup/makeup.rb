
class MakeUp

    attr_accessor :name, :product, :brand, :category

        @@all = []

    def initialize(name, product, brand, category)
        @name = name
        @brand = product
        @brand = brand
        @category = category
        @@all << self
    end

# self #value of self is to refer back to the class, "context word"

    def self.all
       @@all
       #an implicit feature where you dont have to have a return statement. last thing that I evaluated on the computer
    end

    def self.clear_all
        @@all = []
    end

    def self.display_products
        puts "What type of product would you like?"
        self.all.each_with_index{|article, index| puts "#{index + 1}. #{article.title}"}
    end

    # def self.display_article(index)
    #     article = self.all[index]
    #     puts "#{article.title} -- #{article.author}"
    #     puts "#{article.content}"

    #     puts "Would you like to view this article in browser?"
    #     puts "1. Yes"
    #     puts "2. No"
    
    #     input = gets.chomp
    #     index = input.to_i - 1
    
    #     if index == 0
    #         system("open #{article.url}")
    #     end
    # end

    puts "Are you interested in other products?"
    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you for shopping with us! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end

end

