class Contact < ApplicationRecord
  has_many :item_contacts, dependent: :destroy
  has_many :items, :through => :item_contacts

  # 必須チェック
  validates :name, presence: true
end
