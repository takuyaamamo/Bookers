Rails.application.routes.draw do
  # booksにアクセスしたらbooksコントローラーのトップアクションを呼ぶ
  get 'books' => 'books#top'
  # 'books#show'の設定をshowとして利用できるようにする
  get 'books/show/:id' => 'books#show', as: 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # HTTPメソッド 'URL' => 'コントローラ#アクション'
  # トップページをルートにするroot to: 'コントローラ#アクション'
  root to: 'toppage#top'

  post 'books' => 'books#create'
end
