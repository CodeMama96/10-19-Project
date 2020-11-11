
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


end
