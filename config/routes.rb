# Rails.application.routes.draw do
#   resources :students
#   resources :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]
#   # namespace :admin do
#   root "users#index"
#   # end
# end

Rails.application.routes.draw do
  resources :students
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]
  # namespace :admin do
  root "students#index"
  # end
end
