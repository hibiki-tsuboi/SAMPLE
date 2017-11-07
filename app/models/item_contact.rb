class ItemContact < ApplicationRecord
  belongs_to :item
  belongs_to :contact
end
