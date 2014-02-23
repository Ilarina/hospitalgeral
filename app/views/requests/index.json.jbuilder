json.array!(@requests) do |request|
  json.extract! request, :id, :plano, :dataexame, :dataentrega, :laudo, :exame_id, :consultation_id
  json.url request_url(request, format: :json)
end
