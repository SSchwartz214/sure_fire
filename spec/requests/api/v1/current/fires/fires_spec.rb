require 'rails_helper'

describe 'AeriesWeather API' do
    it 'gets the id of the fire' do
        fire_data = {'location': '37.25,-97.25', 'radius': '200miles'}

        get '/api/v1/current/fires', :params => fire_data 
        
        expect(relevant_data.count).to eq(1)
        expect(relevant_data).to be_an(Array)
    end
end