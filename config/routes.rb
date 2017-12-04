Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/welcome', to: redirect('/')
  get '/about', to: 'about#index'
  get '/faq', to: 'faq#index'
  get '/share', to: 'share#index'
  get '/work', to: 'styles#index'
  get '/weekend', to: 'styles#week_index'
  get '/datenight', to: 'styles#date_index'
  get '/casual', to: 'styles#casual_index'

  


  get 'welcome/index', to: redirect('/')

  resources :stores do
    resources :style_items
  end
  #devise_for :users


end
