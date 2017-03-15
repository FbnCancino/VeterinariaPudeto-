json.extract! veterinario, :id, :admin_id, :consulta_id, :nombre, :rut, :telefono, :created_at, :updated_at
json.url veterinario_url(veterinario, format: :json)