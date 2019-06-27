Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    get "/brownie" => "products#show_brownie"
    get "/cheesecake" => "products#show_cheesecake"
    get "/product/:name" => "products#show"
  end
end
