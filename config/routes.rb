SimpleCms::Application.routes.draw do
  root "demo#index"
  match ":controller(/:action(/:id(.:format)))", :via => [:get, :post]
end
