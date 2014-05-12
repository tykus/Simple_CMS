SimpleCms::Application.routes.draw do
  root "subjects#index"

  match ":controller(/:action(/:id(.:format)))", :via => [:get, :post]
end
