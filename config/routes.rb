Rails.application.routes.draw do
  get 'blog' => 'blog#index', as: 'blogs'
end
