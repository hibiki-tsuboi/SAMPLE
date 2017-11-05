json.extract! item, :id, :series, :type_number, :item_name, :tax_excluded, :tax_included, :special, :color_id, :contact_id, :created_at, :updated_at
json.url item_url(item, format: :json)
