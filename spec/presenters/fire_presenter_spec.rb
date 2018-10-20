require 'rails_helper'

describe 'fire presenter' do
    it 'can create an array of fire objects' do
        fire_data = {location: 'losangeles, ca', radius: '200miles'}

        post '/api/v1/current/fires', body: fire_data   

        binding.pry

       expect(presenter).to be_an(Object)
       expect(presenter.location).to eq('losangeles, ca')
       expect(presenter.radius).to eq('200miles')
    end
end