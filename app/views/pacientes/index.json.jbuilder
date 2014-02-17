json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :fone, :endereco, :email
  json.url paciente_url(paciente, format: :json)
end
