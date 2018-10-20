require 'rails_helper'

describe 'AeriesWeather API' do
    it 'gets the id of the fire' do

        get '/api/v1/current/fires'

        expect(response).to be_successful

        fires = JSON.parse(response.body)
    
        expect(fires.count).to eq(1)
    end
end