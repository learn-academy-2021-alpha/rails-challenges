Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'index'=>'post#index', as: 'posts'
  get 'post/new'=>'post#new', as: 'new_post'
  get 'post/:id'=>'post#show', as: 'post'
end
