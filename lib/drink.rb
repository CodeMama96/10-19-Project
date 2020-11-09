class Drink

    attr_accessor :id, :name, :category, :instructions

    @@all = []
    def initialize(id, name, category, instructions)
        @id = id
        @name = name
        @category = category
        @instructions = instructions

        @@all << self
    end

    def self.all
        @@all
    end
end