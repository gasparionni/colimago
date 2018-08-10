Rails.application.routes.draw do
  get 'gyms/index'

  resources :gyms

  resources :pokestops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
