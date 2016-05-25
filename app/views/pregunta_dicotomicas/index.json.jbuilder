json.array!(@pregunta_dicotomicas) do |pregunta_dicotomica|
  json.extract! pregunta_dicotomica, :id, :nombre, :pregunta, :verdadero, :explicacion
  json.url pregunta_dicotomica_url(pregunta_dicotomica, format: :json)
end
