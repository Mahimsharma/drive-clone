Rails.application.routes.draw do
  get 'admin/panel'
  post 'admin/post_user'
  post 'admin/post_medium'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
