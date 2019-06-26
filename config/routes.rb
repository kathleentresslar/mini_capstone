Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#show_all_products"
    get "/brownie" => "products#show_brownie"
    get "/cheesecake" => "products#show_cheesecake"
    get "/product/:product_variable" => "products#show_product"
    get "/product_query_url" => "products#show_product"
  end
end
