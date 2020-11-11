
require 'pry'
class API

    def self.fetch_foundation

        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=foundation"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        

    end

    def self.create_foundation
        fetch_foundation.each{|foundation| Foundation.new(foundation["name"], foundation["brand"], foundation["category"], foundation["description"]) }
    binding.pry
    end

end

puts "api"