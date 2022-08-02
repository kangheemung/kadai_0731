Rails.application.routes.draw do
 
 
  #top
  get '/'=>'posts#index'
  #会員登録
  get 'users/new'=>'users#new'
  post 'users/create'=>'users#create' 
  #投稿
  get  'posts/new'=>'posts#new'
  post 'posts/create'=>'posts#create'
  
  #編集
  get 'posts/:id/edit'=>'posts#edit'
  patch 'posts/:id/update'=>'posts#update'
  #ログイン
  get 'sessions/new'=>'sessions#new'
  post 'sessions/create'=>'sessions#create' 
  delete 'logout'=>'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
