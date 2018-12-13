Rails.application.routes.draw do

  resources :sections
  namespace :admin do
    resources :pages
  end
end
