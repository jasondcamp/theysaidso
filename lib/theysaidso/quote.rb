module Theysaidso
  class Quote
    attr_reader :id, :quote, :author, :length, :tags, :success, :category

    def initialize(attrs = nil)
      @id       = attrs['id']
      @quote    = attrs['quote']
      @author   = attrs['author']
      @length   = attrs['length']
      @tags     = attrs['tags']
      @category = attrs['category']
    end
  end
end
