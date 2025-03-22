Rails.application.routes.draw do
  resources :breaks, only: [:index, :create, :update]
  get 'index', to: 'breaks#index'  # 'index' のルートを設定
end

