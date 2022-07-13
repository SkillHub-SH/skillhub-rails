# == Route Map
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  defaults format: :json do
    devise_for :developers, controllers: {
      sessions: 'api/v1/developers/sessions',
      registrations: 'api/v1/developers/registrations'
    }
    devise_for :companies, controllers: {
      sessions: 'api/v1/companies/sessions',
      registrations: 'api/v1/companies/registrations'
    }

    namespace :api, defaults: { format: 'json' } do
      namespace :v1 do
        namespace :companies do
          resources :problems, only: :create
        end
        resources :problems, only: %i[index show]
        resources :submissions, only: %i[index show create]
        resources :topics, only: :index
        resources :programming_languges, only: %i[index show]
        resources :roadmaps, only: :index
        resources :leaderboards, only: :index
      end
    end
    get '/member-data', to: 'members#show'
  end
end
