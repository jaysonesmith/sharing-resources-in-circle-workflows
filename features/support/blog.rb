class Blog
    attr_reader :url, :resp, :body

    def initialize(url)
        @url = url
    end

    def get
        resp = FARADAY.get(url)
    end
end
