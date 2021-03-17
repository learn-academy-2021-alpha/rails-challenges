Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'blogs' => 'blog#index', as: 'blog_posts'
  get 'blogs/new' => 'blog#new', as: 'new_blog_post'
  get 'blogs/:id' => 'blog#show', as: 'blog_post'
  post 'blogs' => 'blog#create'
  delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog_post'
  get 'blogs/:id/edit' => 'blog#edit', as: 'edit_blog_post'
  patch 'blogs/:id' => 'blog#update'
end
