require 'rest-client'
require 'json'

API_URL = "http://quotes.rest/qod.json"

module Theysaidso
  class QOD
    def self.fetch(api_key = nil)
      response = RestClient.get(API_URL, headers={ "X-TheySaidSo-Api-Secret": api_key})
      response_json = JSON.parse(response.body)

      # Quote of the day will always be one quote
      quotes = []
      response_json['contents']['quotes'].each do |q|
        quotes.push(Theysaidso::Quote.new(q))
      end

      return quotes
    end
  end
end

