Rails.application.routes.draw do
  get 'blog' => 'blog#index', as: 'blogs'
  get 'blog/new' => 'blog#new', as: 'new_blog'
  get 'blog/:id' => 'blog#show', as: 'blog'
  post 'blog' => 'blog#create'
  delete 'blog/:id' => 'blog#destroy', as: 'delete_blog'
  get 'blog/:id/edit' => 'blog#edit', as: 'edit_blog'
  patch 'blog/:id' => 'blog#update'
end
