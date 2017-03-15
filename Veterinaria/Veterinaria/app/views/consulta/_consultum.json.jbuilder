json.extract! consultum, :id, :paciente_id, :sintomas, :diagnostico, :fecha_llegada, :fecha_salida, :created_at, :updated_at
json.url consultum_url(consultum, format: :json)