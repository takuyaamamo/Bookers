class Book < ApplicationRecord
end
# モデル名はコントローラー名と対応させる、またモデルは一つの為単数形、コントローラーは中にアクションがたくさんあるから複数形となる。
# モデルのなかのスキーマは設定を見ることができる。変だったらリセットすることができる
# rails db:migrate:reset