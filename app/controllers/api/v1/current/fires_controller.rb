class Api::V1::Current::FiresController < ApplicationController
    def index 
        fire_info = JSON.parse(response.body)
        presenter = FirePresenter.new(fire_info)
        render json: presenter.fires, status: 200
    end
end