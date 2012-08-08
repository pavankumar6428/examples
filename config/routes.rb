Examples::Application.routes.draw do

  match "/bad_calculate" => "BadCalculations#calculate"
  match "/calculate" => "Calculations#calculate"
  match "/calculate_better" => "Calculations#calculate_better"
  
  

  resources :calculations, :bad_calculations
  resources :clocks

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)
  
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

end
