namespace :api, defaults: { format: 'json' } do
  namespace :v1 do
    devise_for :users, controllers: {
      registrations: 'api/v1/registrations',
      passwords: 'api/v1/passwords'
    }
  end
end
