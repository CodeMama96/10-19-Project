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
        # array_of_makeup = hash["products"]
        # array_of_makeup.each do |makeup|
        #         MakeUp.new(makeup["name"], makeup["brand"], makeup["price"], makeup["product_type"], makeup["description"])
    end


    def self.create_makeup
            self.fetch_makeup.each{|makeup| MakeUp.new(makeup["name"], makeup["brand"], makeup["price"], makeup["product_type"], makeup["description"]) }
    end
    
    binding.pry
end


# def fetch_articles
#     url = "URL"

#     uri = URI(url)
#     response = Net::HTTP.get(uri)
#     articles = JSON.parse(response)
#     articles["articles"][1..10]
# end

# def create_articles
#     self.fetch_articles.each{|articles| MakeUp.new(makeup["strName"], makeup["strBrand"], makeup["strPrice"], makeup["strProduct"]) }
#end