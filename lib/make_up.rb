class MakeUp

    attr_accessor :name, :brand, :price, :product

    @@all = []
    def initialize(name, brand, price, product)
        @name = name
        @brand = brand
        @price = price
        @product = product

        @@all << self
    end

    def self.all
        @@all
    end
end