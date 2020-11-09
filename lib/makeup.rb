class MakeUp

    attr_accessor :name, :brand, :price, :product

    # @@all = []
    # def initialize(name, brand, price, product)
    #     @name = name
    #     @brand = brand
    #     @price = price
    #     @product = product

    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

    # def self.clear_all
    #     @@all = []
    # end

    # def self.display_products
    #     puts "What type of product would you like?"
    #     #self.all.each_with_index{|article, index| puts "#{index + 1}. #{article.title}"}
    # end

    # def self.display_article(index)
    #     article = self.all[index]
    #     # binding.pry
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
end