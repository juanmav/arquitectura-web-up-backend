Rails.application.routes.draw do
  resources :reports

  resources :flights

  resources :planes

  resources :pilots

  resources :skydivers

  resources :servers

  # Le indicamos que negocie el options antes!
  match "/flights.json" => "application#index", via: :options
  match "/flights" => "application#index", via: :options
  match "/flights/:id.json" => "application#index", via: :options
end
