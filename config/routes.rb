Rails.application.routes.draw do
  namespace :api do
    get "/games" => "games#index"
  end
end
