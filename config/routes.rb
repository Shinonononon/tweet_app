Rails.application.routes.draw do
  resources :tests2s
  resources :testsses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts ,only:[:index, :edit, :create, :destroy, :new, :update]
end
