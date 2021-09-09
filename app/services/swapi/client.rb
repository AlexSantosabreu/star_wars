require 'httparty'

module Swapi
  class Client
    attr_reader :url

    def initialize(url)
      @url = url
    end

    def fetch
      response = HTTParty.get(@url)
      JSON.parse(response.body)
    end
  end
end
