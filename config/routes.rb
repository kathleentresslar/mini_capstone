Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#show_all_products"
    get "/brownie" => "products#show_brownie"
    get "/cheesecake" => "products#show_cheesecake"
  end
end
