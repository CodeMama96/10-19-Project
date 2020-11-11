
require 'pry'
class API
    attr_accessor :query

    def initialize(query)
        @query = query
    end 

    def self.fetch_makeup

        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=#{@query}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        hash
    end

    def create_makeup
        self.fetch_makeup.each{|makeup| MakeUp.new(makeup["name"], makeup["product"], makeup["brand"], makeup["category"], makeup["description"]) }
    end

end
