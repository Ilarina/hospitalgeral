json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome, :fone, :endereco, :email, :crm
  json.url medico_url(medico, format: :json)
end
