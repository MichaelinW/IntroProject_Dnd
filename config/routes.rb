Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  get "/", to: "home#index"

  get "/dndclasses", to: "dndclasses#index"
  get "/dndclasses/:id", to: "dndclasses#show"

  get "/backgrounds", to: "backgrounds#index"
  get "/backgrounds/:id", to: "backgrounds#show"

  get "/races", to: "races#index"
  get "/races/:id", to: "races#show"

  get "/characters", to: "characters#index" , as: "characters"
  get "/characters/:id", to: "characters#show", as: "character", constraints: {id:/\d+/}

  resources :characters, only: [:index, :show] do
    #movies/search/(:format)
    collection do
      get "search"
    end
  end

end
