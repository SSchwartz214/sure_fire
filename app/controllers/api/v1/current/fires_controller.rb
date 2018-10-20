class Api::V1::Current::FiresController < ApplicationController
    def index 
        presenter = FirePresenter.new(params)
        render json: presenter.fires, status: 200
    end
end