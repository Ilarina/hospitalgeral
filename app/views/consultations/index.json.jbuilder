json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :data, :hora, :medico_id, :paciente_id
  json.url consultation_url(consultation, format: :json)
end
