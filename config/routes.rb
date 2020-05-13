Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users
resources :songs

resources :users do
  resources :songs
end

resources :tracks
resources :notes

end
