json.extract! producto, :id, :proveedor_id, :nombre, :codigo, :tipo, :precio, :created_at, :updated_at
json.url producto_url(producto, format: :json)