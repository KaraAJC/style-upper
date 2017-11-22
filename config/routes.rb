Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stores do
    resources :style_items
  end


  root to: "stores#index"
end
