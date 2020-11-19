 
require 'pry'
class API

    def self.fetch_foundation

        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=foundation"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
       binding.pry
        hash[1..20].each do|foundation| 
            foundation_instance = Foundation.new(foundation["name"], foundation["brand"], foundation["description"])
        end #.each vs .map/.collect
    end #what is the last line of each method return?
end

