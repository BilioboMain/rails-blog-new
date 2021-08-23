# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  resources :posts do
    get 'name_of_post', on: :member
    get 'last_post', on: :collection
  end

  # resources :post, except: %i[show] do

  # end
  # get 'greetings/stream'
  # 'hello', to:'greetings#hello'

  # get 'posts', to: 'post#index'
  #
  # get 'posts/:id', to: 'posts#show'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
