class Fire
    def initialize(fire_data)
        @fire_id = fire_data[:id]
        @longitude = fire_data[:loc][:long]
        @latitude = fire_data[:loc][:lat]
        @type = fire_data[:report][:type]
    end
end