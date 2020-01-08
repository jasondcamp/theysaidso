require 'rest-client'
require 'json'

module Theysaidso
  class QuoteByAuthor
    def self.search(author = nil, api_key = nil)
      response = RestClient.get("#{API_SEARCH_URL}?author=#{URI::encode(author)}", headers={ "X-TheySaidSo-Api-Secret": api_key})
      response_json = JSON.parse(response.body)

      # Quote of the day will always be one quote
      quotes = []

      if response_json['contents'].is_a?(Hash)
        quotes.push(Theysaidso::Quote.new(response_json['contents']))
      elsif response_json['contents'].is_a?(Array)
        response_json['contents']['quotes'].each do |q|
          quotes.push(Theysaidso::Quote.new(q))
        end
      end

      return quotes
    end
  end
end

