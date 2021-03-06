Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users
  scope "(:locale)", locale: /en|vi/ do
    devise_for :users
    root "static_pages#home"
  end
end
