json.extract! cryo_product, :id, :title, :subtitle, :description, :image, :created_at, :updated_at
json.url cryo_product_url(cryo_product, format: :json)
