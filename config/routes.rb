Rails.application.routes.draw do    
  root "events#index"

  get "events/filter/:filter" => "events#index", as: :filtered_events

  resources :events do
    resources :registrations
    resources :likes
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users
  resources :categories
  
  get "signup" => "users#new"
end
