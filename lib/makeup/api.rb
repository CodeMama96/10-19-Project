 
require 'pry'
class API

    def self.fetch_foundation

        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=foundation"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        arr_of_hashes = JSON.parse(response)
       
        arr_of_hashes[1..20].each do|foundation| 
            foundation_instance = Foundation.new(foundation["name"], foundation["brand"], foundation["description"])
            
        end
    end
end

