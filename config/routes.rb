Rails.application.routes.draw do
  get 'homepage/index'
  get 'login/index'
  get 'login/new'
  post 'login/create'
  post 'login/authenticate'
  get 'login/edit'
  patch 'login/update'
  delete 'login/destroy'
  get 'admin/panel'
  post 'admin/post_user'
  post 'admin/post_medium'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
