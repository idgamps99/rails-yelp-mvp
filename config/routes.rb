Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end

end

# restaurants    GET  /restaurants(.:format)          restaurants#index
#                POST /restaurants(.:format)          restaurants#create
# new_restaurant GET  /restaurants/new(.:format)      restaurants#new
# restaurant     GET  /restaurants/:id(.:format)      restaurants#show


# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
