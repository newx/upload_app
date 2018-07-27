Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # https://github.com/janko-m/tus-ruby-server
  mount Tus::Server => "/files"

  get "uploads",     to: "uploads#index"
  get "uploads/new", to: "uploads#new"
  post "uploads",    to: "uploads#create"
end
