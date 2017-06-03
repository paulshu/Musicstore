Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

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
    resources :orders      #用户后台查看订单
    resources :favorites   #用户收藏，与用户有关
  end

  root 'welcome#index'


  resources :products do
    resources :reviews
    member do
      post :add_to_cart
      post :reduce_buying_quantity #增加和减少添加到购物车以前的购买数量
      post :add_buying_quantity
      post :favorite
      post :unfavorite
    end
    collection do
      get :search          #搜索功能
    end
  end
  resources :carts do      #购物车明细
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
