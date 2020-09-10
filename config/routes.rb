Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :restaurants do
    resources :menu_items, only: [ :new, :create ]
  end
  root to: 'pages#home'
  resources :menu_items, only: [ :edit, :update, :destroy, :show ] do
    resources :menu_options, only: [ :new, :create ]
    resources :order_items, only: [ :new, :create ]
  end
  resources :menu_options, only: [ :edit, :update, :destroy ]
  resources :order_items, only: [ :destroy]
  resources :orders, only: [:show, :create, :destroy] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
