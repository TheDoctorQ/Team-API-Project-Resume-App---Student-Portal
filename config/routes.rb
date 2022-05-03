Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/resumes/:id" => "resumes#show"
  patch "/resumes/:id" => "resumes#update"

  get "/capstones/:id" => "capstones#show"
  patch "/capstones/:id" => "capstones#update"

  post "/sessions" => "sessions#create"
end
