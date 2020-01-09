Rails.application.routes.draw do
  namespace :pages do
    resources :abouts
  end
  namespace :pages do
    resources :homes
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
