json.extract! cliente, :id, :nombre, :rut, :direccion, :telefono, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)