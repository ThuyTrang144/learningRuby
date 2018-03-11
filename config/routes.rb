Rails.application.routes.draw do
  get 'employees/index'
  get 'employees/show'
  get 'employees/edit'
  get 'employees/update'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/login'
  get 'static_pages/register'
  resources :employees
end
