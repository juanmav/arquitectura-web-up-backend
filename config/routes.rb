Rails.application.routes.draw do
  resources :servers

    # Le indicamos que negocie el options antes!
    match "/servers.json" => "application#index", via: :options
    match "/servers" => "application#index", via: :options
    match "/servers/:id.json" => "application#index", via: :options

end
