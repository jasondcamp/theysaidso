require 'ostruct'

require "theysaidso/version"
require "theysaidso/qod"
require 'theysaidso/quote'
require 'theysaidso/quotebyauthor'

API_BASE_URL = "http://quotes.rest"
API_QOD_URL = "#{API_BASE_URL}/qod"
API_SEARCH_URL = "#{API_BASE_URL}/quote/search"

module Theysaidso
  class API
    attr_accessor :api_key
 
    def initialize(api_key: nil)
      @api_key = api_key
    end

    def api_key
      @api_key
    end

    def quote_of_the_day
      Theysaidso::QOD.fetch(self.api_key)
    end

    def search_by_author(author)
      Theysaidso::QuoteByAuthor.search(author, self.api_key)
    end
  end
end
