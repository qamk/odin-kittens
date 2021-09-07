Rails.application.routes.draw do
  get 'kittens/index'
  get 'kittens/show'
  get 'kittens/new'
  get 'kittens/edit'
  get 'kittens/update'
  get 'kittens/create'
  get 'kittens/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
