json.extract! offer, :id, :user, :title, :description, :price, :adress, :phone, :category_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)
