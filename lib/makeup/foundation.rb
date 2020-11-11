class Foundation
    attr_accessor :name, :brand, :category, :description

    def initialize(name, brand, category, description)
        @name = name
        @brand = brand
        @category = category
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end
 
 
 end
 