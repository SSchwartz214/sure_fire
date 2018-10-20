require 'rails_helper'

describe 'Fire search results service' do
    it "can get closest fires" do
        url = 'https://api.aerisapi.com'
        location = 'los angeles,ca'
        radius = '200miles'

       service = FireSearchResults.new(location, radius).run

       expect(service).to be_an(Array)
       expect(service[0]).to have_key(:id)
       expect(service[0]).to have_key(:loc)
    end
end