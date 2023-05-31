Rails.application.routes.draw do
  resources :posts

  devise_for :users do
    get "/users/sign_in" => "devise/sessions#new"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
