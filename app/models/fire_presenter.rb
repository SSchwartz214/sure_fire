class FirePresenter
    def initialize(fire_data)
        @location = fire_data["location"]
        @radius = fire_data["radius"]
    end

    def fires
        fire_search_results.map do |result|
            Fire.new(result).to_json
        end
    end

private

    def fire_search_results
       @results ||= FireSearchResults.new(@location, @radius).run 
    end
end