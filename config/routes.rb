Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bookings, only: [:index, :create]
    end
  end
  devise_for :admins
  devise_for :customers
  get '/admin', to: 'admin#index'
end

