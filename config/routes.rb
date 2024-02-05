Rails.application.routes.draw do

  get "/bike_racks" => "bike_racks#index"
  get "/bike_racks/:id" => "bike_racks#show"
  post "/bike_racks" => "bike_racks#create"
  patch "/bike_racks/:id" => "bike_racks#update"
  delete "/bike_racks/:id" => "bike_racks#destroy"

end
