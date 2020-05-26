Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# resources :users
# resources :songs

post "/signup", to: "users#create"
post "/login", to: "auth#login"
post "/logout", to: "auth#logout"
get "/autologin", to: "auth#autologin"


resources :users do
  resources :songs
end

resources :tracks
resources :notes

end
