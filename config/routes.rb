Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # HTTPメソッド 'URL' => 'コントローラ#アクション'
  # トップページをルートにするroot to: 'コントローラ#アクション'
  root to: 'toppage#top'
end
