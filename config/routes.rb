Derp::Application.routes.draw do
  root :to => 'dashboard#index'

  resources :projects, :only => [:show, :create] do
    resources :alerts, :only => [:index]
  end

  resources :alerts, :only => [:create, :show]
end
