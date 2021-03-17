Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts' => 'post#index', as: 'posts'
  get 'posts/new' => 'post#new', as: 'new_post'
  post 'posts' => 'post#create'
  get 'posts/:id' => 'post#show', as: 'post'
end
