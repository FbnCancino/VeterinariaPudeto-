json.extract! proveedor, :id, :admin_id, :nombre, :rut, :mail, :telefono, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)