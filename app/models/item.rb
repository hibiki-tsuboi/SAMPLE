class Item < ApplicationRecord
  belongs_to :color
  belongs_to :contact

  def self.ransackable_attributes(auth_object = nil)
    %w(series type_number item_name)
  end
end
