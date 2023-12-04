class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :book

  varidates :user_id, uniqueness: {scope: :book_id} #scopeで、user_idとbook_idのペアに対してすでに同じ値のペアがテーブルに保存されていないかを判定
end
