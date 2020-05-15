Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # authenticated :user do
  #   root 'self_tests#new', as: :authenticated_root
  # end

  get 'terms', to: 'main#terms'
  root 'main#index'

  resources :social_distances, only: %i[new create show]
  resources :self_tests, only: %i[new]
  resources :users_dashboards, only: %i[index]
end
