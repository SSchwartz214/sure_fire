class FirePresenter
    attr_reader :location,
                :radius

    def initialize(fire_data)
        @location = fire_data[:location]
        @radius = fire_data[:radius]
    end

    def fires
        fire_search_results.map do |result|
        end
    end

private

    def fire_search_results(location, radius)
       @results ||= FireSearchResults.new(location, radius).run 
    end
end