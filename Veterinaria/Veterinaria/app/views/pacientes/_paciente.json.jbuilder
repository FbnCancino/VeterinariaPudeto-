json.extract! paciente, :id, :cliente_id, :nombre, :sexo, :edad, :tipo, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)