class Contact < ApplicationRecord
  has_many :items
  # 必須チェック
  validates :name, presence: true
end
