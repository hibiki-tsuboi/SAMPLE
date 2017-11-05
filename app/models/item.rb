class Item < ApplicationRecord
  belongs_to :color
  belongs_to :contact

  # 必須チェック
  validates :series, presence: true
  validates :type_number, presence: true
  validates :item_name, presence: true
  validates :tax_excluded, presence: true
  validates :tax_included, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w(series type_number item_name)
  end
end
