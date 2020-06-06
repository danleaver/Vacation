Rails.application.routes.draw do
root 'trips#index'

  resources :trips do
  resources :places
end

resources :places do
  resources :addresses
end

resources :users

resources :user do
  resources :reviews
end

end
