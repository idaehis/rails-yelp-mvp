Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    # /restaurants/:restaurant_id/reviews/new

    # Beyond normal CRUD routes

    # # Collection routes — these are like a "custom index"
    # collection do
    #   # makes a route like /restaurants/CUSTOM_THING
    #   get "top"
    #   # get "low_rated"
    #   # get "berlin"
    # end

    # # Member routes — these are like a "custom show"
    # member do
    #   # make a route like /restaurants/:id/CUSTOM_THING
    #   get "chef"
    # end
  end
  # /reviews/5
end
