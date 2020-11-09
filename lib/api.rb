class API

    def self.start
        puts "What drink would you like today?"
        input = gets.strip
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=martini" #http://makeup-api.herokuapp.com/api/v1/products.json

        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_makeup = hash["products"]
        array_of_makeup.each do |makeup|
                # id, name, category, instructions
                MakeUp.new(makeup["idDrink"], makeup["strDrink"], makeup["strCategory"], makeup["strInstructions"])
        end
    end
end