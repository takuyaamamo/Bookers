Rails.application.routes.draw do
  get 'books' => 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # HTTPメソッド 'URL' => 'コントローラ#アクション'
  # トップページをルートにするroot to: 'コントローラ#アクション'
  root to: 'toppage#top'

  post 'books' => 'books#create'
end
