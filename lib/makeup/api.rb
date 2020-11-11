
require 'pry'
class API

    def self.fetch_foundation

        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=foundation"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        hash.each do|foundation| 
            foundation_instance = Foundation.new(foundation["name"], foundation["brand"], foundation["category"], foundation["description"])
        end
    end
end

