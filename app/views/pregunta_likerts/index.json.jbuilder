json.array!(@pregunta_likerts) do |pregunta_likert|
  json.extract! pregunta_likert, :id, :nombre, :pregunta
  json.url pregunta_likert_url(pregunta_likert, format: :json)
end
