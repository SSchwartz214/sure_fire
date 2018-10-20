class FireSearchResults
    def initialize(location, radius)
        @location = location
        @radius = radius
    end    

    def search 
        conn.get do |req|
            req.url '/fires/closest'
            req.params['p'] = @location
            req.params['radius'] = @radius
            req.params['from'] = '-1months'
            req.params['client_id'] = ENV['CLIENT_ID']
            req.params['client_secret'] = ENV['CLIENT_SECRET']
        end
    end

    def run 
        JSON.parse(search.body, symbolize_names: true)[:response]
    end

private

    def conn 
        Faraday.new(:url => 'https://api.aerisapi.com') do |faraday|
            faraday.request  :url_encoded 
            faraday.response :logger
            faraday.adapter  Faraday.default_adapter  
        end
    end
end