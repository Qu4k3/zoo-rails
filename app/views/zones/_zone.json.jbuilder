json.extract! zone, :id, :name, :weather, :temperature, :humidity, :created_at, :updated_at
json.url zone_url(zone, format: :json)
