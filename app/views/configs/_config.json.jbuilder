json.extract! config, :id, :nom, :post, :adresse, :created_at, :updated_at
json.url config_url(config, format: :json)
