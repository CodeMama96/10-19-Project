class API

    def self.start
        puts "What drink would you like today?"
        input = gets.strip
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=martini" #http://makeup-api.herokuapp.com/api/v1/products.json
        
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_drinks = hash["drinks"]
        array_of_drinks.each do |drink|
                # id, name, category, instructions
                Drink.new(drink["idDrink"], drink["strDrink"], drink["strCategory"], drink["strInstructions"])
        end
    end
end