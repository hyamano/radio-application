Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root               'posts#index'    #ルートパス

  get    'posts'            => 'posts#index'    #投稿内容一覧
  get    'posts/new'        => 'posts#new'      #投稿画面
  post   'posts'            => 'posts#create'   #投稿機能
  get    'users/:id'        => 'users#show'     #マイページへ
  delete 'posts/:id'        => 'posts#destroy'  #削除機能
  patch  'posts/:id'        => 'posts#update'
  get    'posts/:id/edit'   => 'posts#edit'     #編集機能
end
