class Blog
    attr_reader :url

    def initialize(url)
        @url = url
    end

    def get
        FARADAY.get(url).body
    end
end
