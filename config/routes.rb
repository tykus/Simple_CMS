SimpleCms::Application.routes.draw do
  
  root "demo#index"

  get "admin", :to => "access#index"

  match ":controller(/:action(/:id(.:format)))", :via => [:get, :post]
  
end
