class Item < ApplicationRecord
  belongs_to :color
  has_many :item_contacts, dependent: :destroy
  has_many :contacts, :through => :item_contacts

  mount_uploader :image, ImageUploader

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
