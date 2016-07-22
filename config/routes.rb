Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :fibonacci, only: %i(new create index)

  root to: 'fibonacci#index'
end
