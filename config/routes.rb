Rails.application.routes.draw do
  devise_for :another_users
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
