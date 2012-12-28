Derp::Application.routes.draw do
  root :to => 'dashboard#index'

  resources :projects
end
