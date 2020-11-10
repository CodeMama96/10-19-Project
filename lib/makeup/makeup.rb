require 'pry'
require 'net/http'
require 'json'
require_relative "../environment"

class MakeUp
    attr_accessor :name, :product, :brand, :category, :description

    @@all = []

    def initialize(name, product, brand, category, description)
        @name = name
        @product = product
        @brand = brand
        @category = category
        @description = description
        @@all << self
    end

    def self.all
       @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.display_products
        puts "What type of product would you like?"
        self.all.each_with_index{|makeup, index| puts "#{index + 1}. #{makeup.name}"}
        binding.pry
    end

    def self.display_makeup(index)
        makeup = self.all[index]
        puts "#{makeup.name} -- #{makeup.brand}"
        puts "#{makeup.description}"

        puts "Would you like more information on this product?"
        puts "1. Yes"
        puts "2. No"
    
        input = gets.chomp
        index = input.to_i - 1
    
        if index == 0
            system("open #{makeup.url}")
        end
        binding.pry
    end


    # def display_makeup
    #     MakeUp.topics.each_with_index{|brand, index| puts "#{index+1}. #{brand.capitalize}"}
    # end


end

# puts "makeup"