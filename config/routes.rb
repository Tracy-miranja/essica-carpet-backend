Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bookings, only: [:index, :create]
    end
  end
  devise_for :admins, path: 'admin'
  devise_for :customers, path: 'customer'
  get '/admin', to: 'admin#index'
end

