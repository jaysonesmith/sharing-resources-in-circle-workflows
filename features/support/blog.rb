require 'nokogiri'

class Blog
    attr_reader :url, :resp

    def initialize(url)
        @url = url
    end

    def get
        @resp = FARADAY.get(url)
    end

    def title
        Nokogiri::HTML(resp.body).css('title').text
    end
end
