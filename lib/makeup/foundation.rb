class Foundation
    attr_accessor :name, :brand, :description
    @@all = []
    def initialize(name, brand, description)
        @name = name
        @brand = brand
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end
 
 
 end
 