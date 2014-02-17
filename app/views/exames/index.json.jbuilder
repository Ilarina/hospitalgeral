json.array!(@exames) do |exame|
  json.extract! exame, :id, :descricao, :valor, :observacao
  json.url exame_url(exame, format: :json)
end
