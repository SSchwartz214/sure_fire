Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :current do

        get '/fires', to: 'fires#index'
      end
    end
  end
end
