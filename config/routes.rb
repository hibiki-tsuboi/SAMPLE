Rails.application.routes.draw do
  resources :contacts
  resources :colors
  # devise_for :staffs
  root to: 'home#index'
  devise_for :staffs, controllers: {
      confirmations: 'staffs/confirmations',
      passwords:     'staffs/passwords',
      registrations: 'staffs/registrations',
      sessions:      'staffs/sessions',
      unlocks:       'staffs/unlocks'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
