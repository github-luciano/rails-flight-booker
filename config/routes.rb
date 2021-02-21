Rails.application.routes.draw do
  
  resources :airports
  resources :passengers
  resources :flights
  resources :bookings
end
