Derp::Application.routes.draw do
  root :to => 'dashboard#index'

  resources :projects do
    resources :errors, :only => [:index, :create]
  end

  resources :errors
end
