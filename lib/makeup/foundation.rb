class Foundation
    attr_accessor :name, :brand, :description #attr reader and writer

    # def name(name)
    #     @name
    # end

    # def name=(name)
    #     @name = name
    # end

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
 