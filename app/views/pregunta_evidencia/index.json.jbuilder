json.array!(@pregunta_evidencia) do |pregunta_evidencium|
  json.extract! pregunta_evidencium, :id, :nombre, :pregunta
  json.url pregunta_evidencium_url(pregunta_evidencium, format: :json)
end
