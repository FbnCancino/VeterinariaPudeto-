json.extract! admin, :id, :nombre, :rut, :mail, :telefono, :created_at, :updated_at
json.url admin_url(admin, format: :json)