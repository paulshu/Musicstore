Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
    resources :categories
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end

  namespace :account do
    resources :orders
  end

  root 'welcome#index'

  resources :favorites

  resources :products do
    member do
      post :add_to_cart
      post :reduce_buying_quantity #增加和减少添加到购物车以前的购买数量
      post :add_buying_quantity
      post :favorite
      post :unfavorite
    end
    collection do
      get :search
    end
  end
  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items do
    member do
      post :add_quantity
      post :reduce_quantity
    end
  end
  #增加和减少购物车内商品的数目
  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end
end
