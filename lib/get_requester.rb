require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
    attr_accessor :target

    def initialize(url)
        @target = url
    end
    def get_response_body
        uri = URI.parse(@target)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    def parse_json
        items = JSON.parse(self.get_response_body)
    end
end