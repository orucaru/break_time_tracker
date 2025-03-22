Rails.application.routes.draw do
  resources :breaks, only: [ :index, :create, :update ]
  root "breaks#index"  # デフォルトのルートを breaks#index に設定
end
