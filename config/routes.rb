Rails.application.routes.draw do

  resources :pages

  namespace :admin do
    resources :attachments
    resources :pages do
      resources :sections
    end
  end
end
