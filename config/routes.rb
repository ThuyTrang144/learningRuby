Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
  resources :books 
  # only: [:index, :new, :create, :edit]
  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

>>>>>>> 29a56ba... title
=======
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/login'
  get 'static_pages/register'
>>>>>>> b1274ad26d206d50922e48f3393cee2d00a049b5
end
