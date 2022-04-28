Rails.application.routes.draw do
  get 'index' => 'blog#index', as: 'blogs'
  get 'blog/new' => 'blog#new', as: 'new_blog'
  get 'blog/:id' => 'blog#show', as: 'blog'
  post 'blog' => 'blog#create'
end
