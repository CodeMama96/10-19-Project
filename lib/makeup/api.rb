require 'pry'
require 'net/http'
require 'json'
require_relative './makeup.rb'

class API
    attr_accessor :query

    def initialize(query)
        @query = query
    end 

    def self.fetch_makeup

        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=#ruby"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)

        #I want to list every product
    end

    def self.create_makeup
        self.fetch_makeup.each{|makeup| MakeUp.new(makeup["name"], makeup["product"], makeup["brand"], makeup["category"], makeup["description"]) }
        #binding.pry
    end
end

# API.create_makeup

# api = API.new("covergirl")
# binding.pry
puts "api"