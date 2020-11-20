class Foundation
    attr_accessor :name, :brand, :description

    @@all = [] 
    @@saved = []

    def initialize(name, brand, description)
        @name = name
        @brand = brand
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def self.saved
        @@saved
    end

 end
 