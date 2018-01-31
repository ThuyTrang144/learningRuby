Rails.application.routes.draw do
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
end
