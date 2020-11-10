require 'pry'
class API
    attr_accessor :name
    def initialize(name)
        @name = name
    end 

    def self.start
        puts "What makeup would you like to buy today?"
        input = gets.strip
        url = "http://makeup-api.herokuapp.com/api/v1/products.json#{name}"

        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_makeup = hash["products"]
        array_of_makeup.each do |makeup|
                MakeUp.new(makeup["strName"], makeup["strBrand"], makeup["strPrice"], makeup["strProduct"])
        end
    end
end


def fetch_articles
    url = "URL"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    articles = JSON.parse(response)
    articles["articles"][1..10]
end

def create_articles
    self.fetch_articles.each{|articles| MakeUp.new(makeup["strName"], makeup["strBrand"], makeup["strPrice"], makeup["strProduct"]) }